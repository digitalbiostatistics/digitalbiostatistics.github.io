(function () {
  function lockSite() {
    document.documentElement.classList.add("is-password-locked");
    document.documentElement.classList.remove("is-password-unlocked");
  }

  function unlockSite(gate, expectedHash, storageKey) {
    try {
      window.localStorage.setItem(storageKey, expectedHash);
    } catch (error) {
      // If storage is unavailable, allow access for the current page only.
    }
    document.documentElement.classList.remove("is-password-locked");
    document.documentElement.classList.add("is-password-unlocked");
    gate.hidden = true;
  }

  function toHex(buffer) {
    return Array.from(new Uint8Array(buffer))
      .map(function (byte) {
        return byte.toString(16).padStart(2, "0");
      })
      .join("");
  }

  async function sha256(value) {
    const encoded = new TextEncoder().encode(value);
    const digest = await window.crypto.subtle.digest(
      "SHA-256",
      encoded
    );

    return toHex(digest);
  }

  function initializePasswordGate() {
    const gate = document.querySelector("[data-password-gate]");

    if (!gate) {
      return;
    }

    const expectedHash = gate.dataset.passwordHash;
    const storageKey = gate.dataset.passwordStorageKey;
    const form = gate.querySelector("[data-password-form]");
    const input = gate.querySelector("[data-password-input]");
    const error = gate.querySelector("[data-password-error]");

    if (
      !expectedHash ||
      !storageKey ||
      !form ||
      !input ||
      !window.crypto ||
      !window.crypto.subtle
    ) {
      return;
    }

    try {
      if (window.localStorage.getItem(storageKey) === expectedHash) {
        unlockSite(gate, expectedHash, storageKey);
        return;
      }
    } catch (error) {
      // Continue to the form if browser storage is unavailable.
    }

    lockSite();
    window.setTimeout(function () {
      input.focus();
    }, 0);

    form.addEventListener("submit", async function (event) {
      event.preventDefault();

      const candidateHash = await sha256(input.value);

      if (candidateHash === expectedHash) {
        unlockSite(gate, expectedHash, storageKey);
        input.value = "";
        return;
      }

      error.hidden = false;
      input.value = "";
      input.focus();
    });
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", initializePasswordGate);
  } else {
    initializePasswordGate();
  }
})();
