(function () {
  function initializeHomepageAudio() {
    const audio = document.getElementById("homepage-audio");
    const button = document.getElementById(
      "homepage-audio-button"
    );

    if (
      !audio ||
      !button ||
      button.dataset.initialized === "true"
    ) {
      return;
    }

    button.dataset.initialized = "true";

    const icon = button.querySelector(
      ".homepage-audio-icon"
    );

    const label = button.querySelector(
      ".homepage-audio-label"
    );

    function showPlayingState() {
      if (icon) {
        icon.textContent = "❚❚";
      }

      if (label) {
        label.textContent = "Pause music";
      }

      button.setAttribute(
        "aria-label",
        "Pause background music"
      );
    }

    function showPausedState() {
      if (icon) {
        icon.textContent = "▶";
      }

      if (label) {
        label.textContent = "Play music";
      }

      button.setAttribute(
        "aria-label",
        "Play background music"
      );
    }

    button.addEventListener("click", async function () {
      if (audio.paused) {
        try {
          await audio.play();
        } catch (error) {
          console.error(
            "The audio could not be played:",
            error
          );
        }
      } else {
        audio.pause();
      }
    });

    audio.addEventListener("play", showPlayingState);
    audio.addEventListener("pause", showPausedState);

    showPausedState();
  }

  if (document.readyState === "loading") {
    document.addEventListener(
      "DOMContentLoaded",
      initializeHomepageAudio
    );
  } else {
    initializeHomepageAudio();
  }

  document.addEventListener(
    "turbo:load",
    initializeHomepageAudio
  );

  document.addEventListener(
    "page:load",
    initializeHomepageAudio
  );
})();