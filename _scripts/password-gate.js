(function () {
  const storageKey = "digitalbiostatistics:site-unlocked";

  function lockSite() {
    document.documentElement.classList.add("is-password-locked");
    document.documentElement.classList.remove("is-password-unlocked");
  }

  function unlockSite(gate, expectedHash) {
    window.localStorage.setItem(storageKey, expectedHash);
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
    const form = gate.querySelector("[data-password-form]");
    const input = gate.querySelector("[data-password-input]");
    const error = gate.querySelector("[data-password-error]");

    if (
      !expectedHash ||
      !form ||
      !input ||
      !window.crypto ||
      !window.crypto.subtle
    ) {
      return;
    }

    if (window.localStorage.getItem(storageKey) === expectedHash) {
      unlockSite(gate, expectedHash);
      return;
    }

    lockSite();
    window.setTimeout(function () {
      input.focus();
    }, 0);

    form.addEventListener("submit", async function (event) {
      event.preventDefault();

      const candidateHash = await sha256(input.value);

      if (candidateHash === expectedHash) {
        unlockSite(gate, expectedHash);
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
