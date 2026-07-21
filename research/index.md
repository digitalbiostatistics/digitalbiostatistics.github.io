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
    --highlighted-accent: #547f9d;

    position: relative;
    width: 100%;
    max-width: 1050px;
    margin: 40px auto 70px;
    padding: 0 34px;
    box-sizing: border-box;
  }

  .highlighted-papers-viewport {
    width: 100%;
    overflow: hidden;
    border-radius: var(--rounded);
    touch-action: pan-y;
    cursor: grab;
  }

  .highlighted-papers-viewport:active {
    cursor: grabbing;
  }

  .highlighted-papers-track {
    display: flex !important;
    align-items: stretch !important;
    width: 100%;
    transition:
      transform 0.6s
      cubic-bezier(0.22, 1, 0.36, 1);
    will-change: transform;
  }

  .highlighted-paper-slide {
    display: flex !important;
    align-items: stretch !important;
    flex: 0 0 100% !important;
    width: 100% !important;
    min-width: 100% !important;
    padding: 14px 14px 32px;
    box-sizing: border-box;
  }

  .highlighted-paper-slide
    .citation-container {
    display: flex;
    width: 100%;
  }

  .highlighted-paper-slide .citation {
    flex: 1 1 auto;
    width: 100%;
    margin: 0;
  }

  .highlighted-paper-arrow {
    position: absolute;
    top: 50%;
    z-index: 5;

    display: grid;
    place-items: center;

    width: 48px;
    height: 48px;
    padding: 0;

    border: 1px solid
      rgba(84, 127, 157, 0.22);
    border-radius: 50%;

    background: #ffffff;
    color: #263b49;

    box-shadow:
      0 10px 28px rgba(32, 49, 60, 0.14);

    font-size: 24px;
    line-height: 1;

    cursor: pointer;

    transform: translateY(-50%);

    transition:
      transform 0.2s ease,
      box-shadow 0.2s ease,
      background 0.2s ease;
  }

  .highlighted-paper-arrow:hover {
    background: #f4f8fa;

    box-shadow:
      0 13px 32px rgba(32, 49, 60, 0.2);

    transform:
      translateY(-50%)
      scale(1.08);
  }

  .highlighted-paper-arrow.previous {
    left: 7px;
  }

  .highlighted-paper-arrow.next {
    right: 7px;
  }

  .highlighted-papers-dots {
    display: flex !important;
    justify-content: center;
    align-items: center;
    gap: 10px;

    min-height: 22px;
    margin-top: 24px;
  }

  .highlighted-paper-dot {
    display: block;

    width: 10px;
    height: 10px;
    padding: 0;

    border: 0;
    border-radius: 999px;

    background: var(--highlighted-accent);
    opacity: 0.28;

    cursor: pointer;

    transition:
      width 0.3s ease,
      opacity 0.3s ease,
      transform 0.3s ease;
  }

  .highlighted-paper-dot.is-active {
    width: 34px;
    opacity: 1;
  }

  .highlighted-paper-dot:hover {
    opacity: 0.75;
    transform: scale(1.12);
  }

  .highlighted-paper-arrow:focus-visible,
  .highlighted-paper-dot:focus-visible {
    outline: 3px solid
      rgba(84, 127, 157, 0.55);
    outline-offset: 3px;
  }

  @media screen and (max-width: 768px) {
    .highlighted-papers-slider {
      margin: 28px auto 60px;
      padding: 0 8px;
    }

    .highlighted-paper-slide {
      padding: 10px 8px 28px;
    }

    .highlighted-paper-arrow {
      width: 40px;
      height: 40px;
      font-size: 20px;
    }

    .highlighted-paper-arrow.previous {
      left: 16px;
    }

    .highlighted-paper-arrow.next {
      right: 16px;
    }
  }

  @media screen and (max-width: 420px) {
    .highlighted-paper-arrow {
      width: 36px;
      height: 36px;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .highlighted-papers-track {
      transition: none;
    }
  }
</style>

{% assign highlighted_papers = "Glucodensity functional profiles outperform traditional continuous glucose monitoring metrics||Multilevel functional distributional models with applications to continuous glucose monitoring in diabetes clinical trials||Conformal and kNN Predictive Uncertainty Quantification Algorithms in Metric Spaces||Denoising Data with Measurement Error Using a Reproducing Kernel-based Diffusion Model||Distributional Random Forests for Complex Survey Designs on Reproducing Kernel Hilbert Spaces||Random-Effects Algorithm for Random Objects in Metric Spaces" | split: "||" %}

<div
  id="highlighted-papers-slider"
  class="highlighted-papers-slider"
  aria-label="Highlighted publications"
  aria-roledescription="carousel"
>
  <div class="highlighted-papers-viewport">
    <div class="highlighted-papers-track">
      {% for paper in highlighted_papers %}
        {% assign paper_title = paper | strip %}

        <article
          class="highlighted-paper-slide"
          aria-hidden="{% if forloop.first %}false{% else %}true{% endif %}"
        >
          {% include citation.html
            lookup=paper_title
            style="rich"
          %}
        </article>
      {% endfor %}
    </div>
  </div>

  <button
    class="highlighted-paper-arrow previous"
    type="button"
    aria-label="Previous publication"
  >
    &#10094;
  </button>

  <button
    class="highlighted-paper-arrow next"
    type="button"
    aria-label="Next publication"
  >
    &#10095;
  </button>

  <div
    class="highlighted-papers-dots"
    aria-label="Choose highlighted publication"
  >
    {% for paper in highlighted_papers %}
      <button
        class="highlighted-paper-dot{% if forloop.first %} is-active{% endif %}"
        type="button"
        data-slide="{{ forloop.index0 }}"
        aria-label="Show highlighted publication {{ forloop.index }}"
        {% if forloop.first %}
          aria-current="true"
        {% endif %}
      ></button>
    {% endfor %}
  </div>
</div>

<script
  src="{{ '/assets/js/highlighted-papers.js' | relative_url }}"
  defer
></script>

{% include section.html %}

## All

{% include search-box.html %}
{% include search-info.html %}

{% include list.html data="citations" component="citation" style="rich" %}
