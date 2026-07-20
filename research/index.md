---
title: Research
lang: en
translation_key: research
nav:
  order: 1
  tooltip: Published works
---

# Research

## The Ongoing Future

Imagine a person experiencing an acute coronary syndrome alone at home, wearing a device that continuously monitors vital signs. As the device detects critical changes—such as an abnormal electrocardiogram or a drop in oxygen levels—it automatically triggers an emergency response. Within seconds, the system locates and dispatches the nearest available ambulance, adapting in real-time to factors like traffic conditions and hospital capacity.

While en route, the device continuously transmits vital patient data, enabling dynamic adjustments to <strong>medical</strong> and logistical decisions. If the patient's condition worsens, the hospital is alerted to prepare a critical care unit. Upon arrival, predictive models guide decision-making, ensuring the best possible outcome while maximising healthcare resource efficiency.
<div style="max-width: 600px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/ambulance.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

{% include section.html %}

## Our Mission and Vision

Our long-term goal is to build a healthcare decision-making framework that supports better clinical and public health decisions at both the individual and population levels by combining biostatistics, digital health technologies, and operations research.
 
We are currently developing statistical and artificial intelligence methods for complex clinical problems involving continuous, high-frequency, and real-time health data. We want these methods not only to answer existing medical questions, but also to help identify the questions that matter most. What diet is best for a particular person? How much physical activity does someone need to support healthy aging and longevity? How should these recommendations change according to an individual’s clinical profile, biology, environment, and lifestyle?
 
To address these questions, our research brings together causal inference, survival analysis, conformal inference and uncertainty quantification, random-effects and multilevel models, generative AI, spatiotemporal modeling, functional data analysis, and statistical learning for non-Euclidean data and other complex data structures.Careful study design and computational scalability are essential to this vision. Our goal is to develop methods that are mathematically rigorous, computationally efficient, and practical enough to be used with large-scale biomedical resources such as the UK Biobank, the All of Us Research Program, the Human Phenotype Project, and NHANES.
 
Although many methods published in leading statistics and machine learning journals are technically sound, they are not always designed with the complexities of real-world clinical data in mind. Our research therefore starts from concrete biomedical questions and practical challenges. We develop methods that reflect the structure of the data, the realities of clinical practice, and the decisions that clinicians, patients, and healthcare systems need to make.

## Highlighted

<style>
  .highlighted-papers-slider {
    position: relative;
    width: 100%;
    margin: 1.5rem auto 2.5rem;
  }

  .highlighted-papers-viewport {
    width: 100%;
    overflow: hidden;
    padding: 14px 18px 20px;
    touch-action: pan-y;
    cursor: grab;
  }

  .highlighted-papers-viewport:active {
    cursor: grabbing;
  }

  .highlighted-papers-track {
    display: flex;
    width: 100%;
    transition: transform 0.55s ease;
    will-change: transform;
  }

  .highlighted-paper-slide {
    flex: 0 0 100%;
    min-width: 0;
    padding: 0 2px;
  }

  /* Mantiene exactamente el aspecto de los papers actuales */
  .highlighted-paper-slide .citation {
    width: 100%;
    margin: 0;
  }

  .highlighted-paper-arrow {
    position: absolute;
    top: 50%;
    z-index: 5;

    display: flex;
    align-items: center;
    justify-content: center;

    width: 46px;
    height: 46px;
    padding: 0;

    border: 1px solid var(--light-gray);
    border-radius: 50%;
    background: var(--background);
    color: var(--text);
    box-shadow: var(--shadow);

    font-size: 30px;
    line-height: 1;
    cursor: pointer;

    transform: translateY(-50%);
    transition:
      transform 0.2s ease,
      background-color 0.2s ease;
  }

  .highlighted-paper-arrow:hover {
    background: var(--background-alt);
    transform: translateY(-50%) scale(1.06);
  }

  .highlighted-paper-arrow.previous {
    left: -10px;
  }

  .highlighted-paper-arrow.next {
    right: -10px;
  }

  .highlighted-papers-dots {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 9px;
    min-height: 16px;
    margin-top: 4px;
  }

  .highlighted-paper-dot {
    width: 9px;
    height: 9px;
    padding: 0;

    border: 0;
    border-radius: 50%;
    background: var(--light-gray);

    cursor: pointer;
    transition:
      width 0.25s ease,
      border-radius 0.25s ease,
      background-color 0.25s ease;
  }

  .highlighted-paper-dot.is-active {
    width: 26px;
    border-radius: 10px;
    background: var(--primary);
  }

  @media (max-width: 700px) {
    .highlighted-papers-viewport {
      padding: 12px 4px 18px;
    }

    .highlighted-paper-arrow {
      width: 38px;
      height: 38px;
      font-size: 25px;
    }

    .highlighted-paper-arrow.previous {
      left: -4px;
    }

    .highlighted-paper-arrow.next {
      right: -4px;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .highlighted-papers-track {
      transition: none;
    }
  }
</style>

<!--
Añade aquí los títulos EXACTOS de los papers separados por ||
-->

{% assign highlighted_papers = "Glucodensity functional profiles outperform traditional continuous glucose monitoring metrics"||"Multilevel functional distributional models with applications to continuous glucose monitoring in diabetes clinical trials"||"Conformal and kNN Predictive Uncertainty Quantification Algorithms in Metric Spaces"||"Denoising Data with Measurement Error Using a Reproducing Kernel-based Diffusion Model"||"Distributional Random Forests for Complex Survey Designs on Reproducing Kernel Hilbert Spaces"||"Random-Effects Algorithm for Random Objects in Metric Spaces" | split: "||" %}

<div
  id="highlighted-papers-slider"
  class="highlighted-papers-slider"
  aria-label="Highlighted publications"
>
  <button
    class="highlighted-paper-arrow previous"
    type="button"
    aria-label="Previous publication"
  >
    <span aria-hidden="true">‹</span>
  </button>

  <div class="highlighted-papers-viewport">
    <div class="highlighted-papers-track">

      {% for paper in highlighted_papers %}
        {% assign paper_title = paper | strip %}

        <div
          class="highlighted-paper-slide"
          aria-hidden="{% if forloop.first %}false{% else %}true{% endif %}"
        >
          {% include citation.html lookup=paper_title style="rich" %}
        </div>
      {% endfor %}

    </div>
  </div>

  <button
    class="highlighted-paper-arrow next"
    type="button"
    aria-label="Next publication"
  >
    <span aria-hidden="true">›</span>
  </button>

  <div
    class="highlighted-papers-dots"
    aria-label="Choose highlighted publication"
  ></div>
</div>

<script>
  (function () {
    function initialiseHighlightedPapers() {
      const slider = document.getElementById("highlighted-papers-slider");

      if (!slider || slider.dataset.initialized === "true") {
        return;
      }

      const viewport = slider.querySelector(".highlighted-papers-viewport");
      const track = slider.querySelector(".highlighted-papers-track");
      const slides = Array.from(
        slider.querySelectorAll(".highlighted-paper-slide")
      );

      const previousButton = slider.querySelector(
        ".highlighted-paper-arrow.previous"
      );

      const nextButton = slider.querySelector(
        ".highlighted-paper-arrow.next"
      );

      const dotsContainer = slider.querySelector(
        ".highlighted-papers-dots"
      );

      if (
        !viewport ||
        !track ||
        slides.length === 0 ||
        !previousButton ||
        !nextButton ||
        !dotsContainer
      ) {
        return;
      }

      slider.dataset.initialized = "true";

      let currentIndex = 0;
      let autoplayTimer = null;
      let isDragging = false;
      let startX = 0;
      let currentX = 0;

      const reducedMotion = window.matchMedia(
        "(prefers-reduced-motion: reduce)"
      ).matches;

      const dots = slides.map(function (_, index) {
        const dot = document.createElement("button");

        dot.type = "button";
        dot.className = "highlighted-paper-dot";
        dot.setAttribute(
          "aria-label",
          "Show highlighted publication " + (index + 1)
        );

        dot.addEventListener("click", function () {
          showSlide(index);
          restartAutoplay();
        });

        dotsContainer.appendChild(dot);

        return dot;
      });

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
            slideIndex === currentIndex ? "false" : "true"
          );
        });

        dots.forEach(function (dot, dotIndex) {
          const active = dotIndex === currentIndex;

          dot.classList.toggle("is-active", active);

          if (active) {
            dot.setAttribute("aria-current", "true");
          } else {
            dot.removeAttribute("aria-current");
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
          window.clearInterval(autoplayTimer);
          autoplayTimer = null;
        }
      }

      function startAutoplay() {
        if (
          slides.length <= 1 ||
          reducedMotion ||
          document.hidden ||
          autoplayTimer !== null
        ) {
          return;
        }

        autoplayTimer = window.setInterval(nextSlide, 7000);
      }

      function restartAutoplay() {
        stopAutoplay();
        startAutoplay();
      }

      previousButton.addEventListener("click", function () {
        previousSlide();
        restartAutoplay();
      });

      nextButton.addEventListener("click", function () {
        nextSlide();
        restartAutoplay();
      });

      viewport.addEventListener("pointerdown", function (event) {
        isDragging = true;
        startX = event.clientX;
        currentX = event.clientX;
        stopAutoplay();

        if (viewport.setPointerCapture) {
          viewport.setPointerCapture(event.pointerId);
        }
      });

      viewport.addEventListener("pointermove", function (event) {
        if (!isDragging) {
          return;
        }

        currentX = event.clientX;
      });

      viewport.addEventListener("pointerup", function (event) {
        if (!isDragging) {
          return;
        }

        const distance = currentX - startX;
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
          viewport.hasPointerCapture(event.pointerId)
        ) {
          viewport.releasePointerCapture(event.pointerId);
        }

        startAutoplay();
      });

      viewport.addEventListener("pointercancel", function () {
        isDragging = false;
        startAutoplay();
      });

      slider.addEventListener("mouseenter", stopAutoplay);
      slider.addEventListener("mouseleave", startAutoplay);
      slider.addEventListener("focusin", stopAutoplay);
      slider.addEventListener("focusout", startAutoplay);

      document.addEventListener("visibilitychange", function () {
        if (document.hidden) {
          stopAutoplay();
        } else {
          startAutoplay();
        }
      });

      if (slides.length <= 1) {
        previousButton.hidden = true;
        nextButton.hidden = true;
        dotsContainer.hidden = true;
      }

      showSlide(0);
      startAutoplay();
    }

    if (document.readyState === "loading") {
      document.addEventListener(
        "DOMContentLoaded",
        initialiseHighlightedPapers
      );
    } else {
      initialiseHighlightedPapers();
    }
  })();
</script>

{% include section.html %}

## All

{% include search-box.html %}
{% include search-info.html %}

{% include list.html data="citations" component="citation" style="rich" %}
