(function () {
  function initializeHighlightedPapers() {
    const slider = document.getElementById(
      "highlighted-papers-slider"
    );

    if (!slider || slider.dataset.initialized === "true") {
      return;
    }

    const viewport = slider.querySelector(
      ".highlighted-papers-viewport"
    );

    const track = slider.querySelector(
      ".highlighted-papers-track"
    );

    const slides = Array.from(
      slider.querySelectorAll(
        ".highlighted-paper-slide"
      )
    );

    const dots = Array.from(
      slider.querySelectorAll(
        ".highlighted-paper-dot"
      )
    );

    const previousButton = slider.querySelector(
      ".highlighted-paper-arrow.previous"
    );

    const nextButton = slider.querySelector(
      ".highlighted-paper-arrow.next"
    );

    if (
      !viewport ||
      !track ||
      slides.length === 0 ||
      !previousButton ||
      !nextButton
    ) {
      return;
    }

    slider.dataset.initialized = "true";

    let currentIndex = 0;
    let autoplayTimer = null;
    let isVisible = false;
    let isDragging = false;
    let startX = 0;
    let currentX = 0;

    const reducedMotion = window.matchMedia(
      "(prefers-reduced-motion: reduce)"
    ).matches;

    function showSlide(index) {
      currentIndex =
        (index + slides.length) % slides.length;

      track.style.transform =
        "translate3d(-" +
        currentIndex * 100 +
        "%, 0, 0)";

      slides.forEach(function (slide, slideIndex) {
        slide.setAttribute(
          "aria-hidden",
          slideIndex === currentIndex
            ? "false"
            : "true"
        );
      });

      dots.forEach(function (dot, dotIndex) {
        const active = dotIndex === currentIndex;

        dot.classList.toggle(
          "is-active",
          active
        );

        if (active) {
          dot.setAttribute(
            "aria-current",
            "true"
          );
        } else {
          dot.removeAttribute(
            "aria-current"
          );
        }
      });
    }

    function nextSlide() {
      showSlide(currentIndex + 1);
    }

    function previousSlide() {
      showSlide(currentIndex - 1);
    }

    function stopAutoplay() {
      if (autoplayTimer !== null) {
        window.clearInterval(
          autoplayTimer
        );

        autoplayTimer = null;
      }
    }

    function startAutoplay() {
      if (
        slides.length <= 1 ||
        reducedMotion ||
        !isVisible ||
        document.hidden ||
        autoplayTimer !== null
      ) {
        return;
      }

      autoplayTimer = window.setInterval(
        nextSlide,
        20000
      );
    }

    function restartAutoplay() {
      stopAutoplay();
      startAutoplay();
    }

    previousButton.addEventListener(
      "click",
      function () {
        previousSlide();
        restartAutoplay();
      }
    );

    nextButton.addEventListener(
      "click",
      function () {
        nextSlide();
        restartAutoplay();
      }
    );

    dots.forEach(function (dot) {
      dot.addEventListener(
        "click",
        function () {
          const index = Number(
            dot.dataset.slide
          );

          if (Number.isInteger(index)) {
            showSlide(index);
            restartAutoplay();
          }
        }
      );
    });

    viewport.addEventListener(
      "pointerdown",
      function (event) {
        isDragging = true;
        startX = event.clientX;
        currentX = event.clientX;

        stopAutoplay();

        if (viewport.setPointerCapture) {
          viewport.setPointerCapture(
            event.pointerId
          );
        }
      }
    );

    viewport.addEventListener(
      "pointermove",
      function (event) {
        if (!isDragging) {
          return;
        }

        currentX = event.clientX;
      }
    );

    viewport.addEventListener(
      "pointerup",
      function (event) {
        if (!isDragging) {
          return;
        }

        const distance =
          currentX - startX;

        isDragging = false;

        if (Math.abs(distance) >= 45) {
          if (distance < 0) {
            nextSlide();
          } else {
            previousSlide();
          }
        }

        if (
          viewport.hasPointerCapture &&
          viewport.hasPointerCapture(
            event.pointerId
          )
        ) {
          viewport.releasePointerCapture(
            event.pointerId
          );
        }

        startAutoplay();
      }
    );

    viewport.addEventListener(
      "pointercancel",
      function () {
        isDragging = false;
        startAutoplay();
      }
    );

    slider.addEventListener(
      "mouseenter",
      stopAutoplay
    );

    slider.addEventListener(
      "mouseleave",
      startAutoplay
    );

    slider.addEventListener(
      "focusin",
      stopAutoplay
    );

    slider.addEventListener(
      "focusout",
      startAutoplay
    );

    document.addEventListener(
      "visibilitychange",
      function () {
        if (document.hidden) {
          stopAutoplay();
        } else {
          startAutoplay();
        }
      }
    );

    if (slides.length <= 1) {
      previousButton.hidden = true;
      nextButton.hidden = true;

      const dotsContainer =
        slider.querySelector(
          ".highlighted-papers-dots"
        );

      if (dotsContainer) {
        dotsContainer.hidden = true;
      }
    }

    if ("IntersectionObserver" in window) {
      const observer =
        new IntersectionObserver(
          function (entries) {
            entries.forEach(
              function (entry) {
                isVisible =
                  entry.isIntersecting;

                if (isVisible) {
                  startAutoplay();
                } else {
                  stopAutoplay();
                }
              }
            );
          },
          {
            threshold: 0.3
          }
        );

      observer.observe(slider);
    } else {
      isVisible = true;
      startAutoplay();
    }

    showSlide(0);
  }

  if (document.readyState === "loading") {
    document.addEventListener(
      "DOMContentLoaded",
      initializeHighlightedPapers
    );
  } else {
    initializeHighlightedPapers();
  }

  document.addEventListener(
    "turbo:load",
    initializeHighlightedPapers
  );

  document.addEventListener(
    "page:load",
    initializeHighlightedPapers
  );
})();