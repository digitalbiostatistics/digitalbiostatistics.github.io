"""
utility functions for cite process and plugins
"""

import subprocess
import json
import yaml
from yaml.loader import SafeLoader
from pathlib import Path
from datetime import date, datetime
from rich import print
from diskcache import Cache


# cache for time-consuming network requests
cache = Cache("./_cite/.cache")


# clear expired items from cache
cache.expire()


def log_cache(func):
    """
    decorator to use around memoized function to log if cached or or not
    """

    def wrap(*args):
        key = func.__cache_key__(*args)
        if key in cache:
            log(" (from cache)", level="INFO", newline=False)
        return func(*args)

    return wrap


def log(message="\n--------------------\n", indent=0, level="", newline=True):
    """
    log to terminal, color determined by indent and level
    """

    colors = {
        0: "[orange1]",
        1: "[salmon1]",
        2: "[violet]",
        3: "[sky_blue1]",
        "ERROR": "[#F43F5E]",
        "WARNING": "[#EAB308]",
        "SUCCESS": "[#10B981]",
        "INFO": "[grey70]",
    }
    prefixes = {
        "ERROR": "🚫 ERROR: ",
        "WARNING": "⚠️ WARNING: ",
    }
    color = get_safe(colors, level, "") or get_safe(colors, indent, "") or "[white]"
    prefix = get_safe(prefixes, level, "")
    if newline:
        print()
    print(indent * "    " + color + prefix + str(message) + "[/]", end="", flush=True)


def label(entry):
    """
    get "label" of dict entry (for logging purposes)
    """

    return str(list(entry.keys())[0]) + ": " + str(list(entry.values())[0])


def get_safe(item, path, default=None):
    """
    safely access value in nested lists/dicts
    """

    for part in str(path).split("."):
        try:
            part = int(part)
        except ValueError:
            part = part
        try:
            item = item[part]
        except (KeyError, IndexError, AttributeError, TypeError):
            return default
    return item


def index_of(_list, value, fallback=float("inf")):
    """
    index of, with fallback
    """

    try:
        return _list.index(value)
    except ValueError:
        return fallback


def list_of_dicts(data):
    """
    check if data is list of dicts
    """

    return isinstance(data, list) and all(isinstance(entry, dict) for entry in data)


def format_date(_date):
    """
    format date as YYYY-MM-DD, or no date if malformed
    """

    if isinstance(_date, int):
        return datetime.fromtimestamp(_date // 1000.0).strftime("%Y-%m-%d")
    if isinstance(_date, (date, datetime)):
        return _date.strftime("%Y-%m-%d")
    try:
        return datetime.strptime(_date, "%Y-%m-%d").strftime("%Y-%m-%d")
    except Exception:
        return ""


def load_data(path):
    """
    read data from yaml or json file
    """

    # convert to path object
    path = Path(path)

    # check if file exists
    if not path.is_file():
        raise Exception("Can't find file")

    # try to open file
    try:
        file = open(path, encoding="utf8")
    except Exception as e:
        raise Exception(e or "Can't open file")

    # try to parse as yaml
    try:
        with file:
            data = yaml.load(file, Loader=SafeLoader)
    except Exception:
        raise Exception("Can't parse file. Make sure it's valid YAML.")

    # if no errors, return data
    return data


def save_data(path, data):
    """
    Write data to a UTF-8 YAML file.
    """

    path = Path(path)

    # Prevent YAML anchors and aliases.
    yaml.Dumper.ignore_aliases = lambda *args: True

    note = "# DO NOT EDIT, GENERATED AUTOMATICALLY"

    try:
        with open(path, mode="w", encoding="utf-8", newline="\n") as file:
            file.write(f"{note}\n\n")

            yaml.dump(
                data,
                file,
                Dumper=yaml.Dumper,
                default_flow_style=False,
                sort_keys=False,
                allow_unicode=True,
            )

    except Exception as e:
        raise Exception(f"Can't save YAML to file: {e}")


@log_cache
@cache.memoize(name="manubot", expire=90 * (60 * 60 * 24))
def cite_with_manubot(_id):
    """
    Generate citation data for source id with Manubot.
    """

    try:
        commands = ["manubot", "cite", _id, "--log-level=WARNING"]

        result = subprocess.run(
            commands,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            encoding="utf-8",
            errors="strict",
            check=True,
        )

    except subprocess.CalledProcessError as e:
        log(e.stderr, indent=3)
        raise Exception("Manubot could not generate citation")
    except Exception as e:
        log(e, indent=3)
        raise Exception("Manubot could not generate citation")

    try:
        manubot = json.loads(result.stdout)[0]
    except Exception as e:
        raise Exception(f"Couldn't parse Manubot response: {e}")

    citation = {}

    citation["id"] = _id
    citation["title"] = get_safe(manubot, "title", "").strip()

    citation["authors"] = []

    for author in get_safe(manubot, "author", {}):
        given = get_safe(author, "given", "").strip()
        family = get_safe(author, "family", "").strip()

        if given or family:
            citation["authors"].append(
                " ".join(part for part in [given, family] if part)
            )

    container = get_safe(manubot, "container-title", "").strip()
    collection = get_safe(manubot, "collection-title", "").strip()
    publisher = get_safe(manubot, "publisher", "").strip()

    citation["publisher"] = container or publisher or collection or ""

    def date_part(citation_data, index):
        try:
            return citation_data["issued"]["date-parts"][0][index]
        except (KeyError, IndexError, TypeError):
            return ""

    year = date_part(manubot, 0)

    if year:
        month = date_part(manubot, 1) or "1"
        day = date_part(manubot, 2) or "1"
        citation["date"] = format_date(f"{year}-{month}-{day}")
    else:
        citation["date"] = ""

    citation["link"] = get_safe(manubot, "URL", "").strip()

    return citation