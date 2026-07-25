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

<div style="max-width: 500px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/missingdata.gif' | relative_url }}"
    alt="Animation illustrating missing smartphone data"
    style="width: 100%; display: block; border-radius: 4px;"
  >
</div>

We are currently developing statistical and artificial intelligence methods for complex clinical problems involving continuous, high-frequency, and real-time health data. We want these methods not only to answer existing medical questions, but also to help identify the questions that matter most. What diet is best for a particular person? How much physical activity does someone need to support healthy aging and longevity? How should these recommendations change according to an individual’s clinical profile, biology, environment, and lifestyle?

<div style="max-width: 700px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/fenotipos.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

To address these questions, our research brings together modern statistical AI methods for causal inference, survival analysis, uncertainty quantification, and random-effects generative modeling to advance statistical learning for non-Euclidean random objects. Careful study design and computational scalability are essential to this vision. Our goal is to develop methods that are mathematically rigorous yet computationally efficient at population scale, targeting biomedical resources such as the UK Biobank, the All of Us Research Program, the Human Phenotype Project, and NHANES.

<div style="max-width: 400px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/HPP.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>
 
Although many methods published in top methodological journals are mathematically rigorous and technically sound, they are not always designed with the complexities and hyphotesis of real-world clinical data in mind. Our research is therefore grounded in concrete biomedical questions and practical challenges. We develop methods that reflect the structure of the data, the realities of clinical practice, and the critical decisions facing patients, clinicians, and healthcare systems to progress the field.

<div style="max-width: 700px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/cluster.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

<style>
  .research-focus-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 24px;

    width: 100%;
    max-width: 1100px;

    margin: 48px auto 56px;
  }

  .research-focus-card {
    display: flex;
    flex-direction: column;

    min-width: 0;
    padding: 30px 28px;

    box-sizing: border-box;

    background: #ffffff;
    border: 1px solid rgba(84, 127, 157, 0.18);
    border-radius: var(--rounded, 8px);

    box-shadow: 0 12px 32px rgba(32, 49, 60, 0.08);
  }

  .research-focus-card h3 {
    margin: 0 0 14px;

    font-size: clamp(1.15rem, 1.6vw, 1.4rem);
    font-weight: 650;
    line-height: 1.3;

    color: #263b49;
  }

  .research-focus-card p {
    margin: 0;

    font-size: 1rem;
    line-height: 1.65;

    color: #66757f;
  }

  @media screen and (max-width: 900px) {
    .research-focus-grid {
      grid-template-columns: repeat(2, minmax(0, 1fr));
      gap: 20px;

      margin: 40px auto 48px;
    }

    .research-focus-card:last-child {
      grid-column: 1 / -1;
    }
  }

  @media screen and (max-width: 640px) {
    .research-focus-grid {
      grid-template-columns: 1fr;
      gap: 16px;

      margin: 32px auto 42px;
    }

    .research-focus-card,
    .research-focus-card:last-child {
      grid-column: auto;
    }

    .research-focus-card {
      padding: 24px 22px;
    }

    .research-focus-card h3 {
      font-size: 1.12rem;
    }

    .research-focus-card p {
      font-size: 0.96rem;
    }
  }
</style>

<div class="research-focus-grid" aria-label="Research areas">
  <article class="research-focus-card">
    <h3>Digital biomarkers</h3>
    <p>
      Methods for representing continuous physiological and behavioral data
      as complex functional and distributional objects.
    </p>
  </article>

  <article class="research-focus-card">
    <h3>Statistical AI for complex health data</h3>
    <p>
      Machine learning, random-effects models, generative methods, and
      uncertainty quantification for longitudinal and non-Euclidean data.
    </p>
  </article>

  <article class="research-focus-card">
    <h3>Personalized healthcare decisions</h3>
    <p>
      Integration of prediction, causal reasoning, uncertainty, and operations
      research to support individualized and population-level decisions.
    </p>
  </article>
</div>

## Seven Pillars of Our Research Program in Digital Health
Our seven papers represent a substantial methodological and conceptual advance for the field of digital health.

The introduction of the notion of glucodensity represents a first step toward the creation of more complex digital phenotypes through functional and distributional data analysis. This framework opens new directions for biological discovery and allows us to use the continuous information generated by new medical devices more efficiently, instead of reducing these data to a reduced number of scalar measures.
 
The introduction of multivariate glucodensity represents a further conceptual step in the analysis of human physiology. Clinical data are no longer analyzed only as individual numbers, but as complex objects that are closer to medical images. We can now integrate the dynamics of the underlying physiological processes within a unified distributional glucodensity framework.
 
The joint work with Ciprian Crainiceanu on random-effects models for glucodensity data extends these ideas to longitudinal studies conducted over weeks, months, or years. This work creates a new framework for using digital information in clinical trials, with the possibility of increasing statistical power and discovering new and more relevant longitudinal biomarkers.
 
With Mateo Cámara, we propose the first framework for random-effects modeling in general metric spaces, providing a unified approach for analyzing different types of statistical objects in clinical studies. Most of the information collected in digital health is nearly continuous over time, is measured at multiple time scales, and naturally exhibits a multilevel structure. Our framework provides, for the first time, a general analytical way to model these complex sources of variation within a broader mathematical generality.
 
The framework for uncertainty quantification in metric spaces, developed together with Gábor Lugosi, is methodologically important because it provides a formal method for calibrating and evaluating conditional coverage without restrictive smoothness conditions. At the same time, it opens a more general framework for uncertainty quantification for the biomarkers of the future, which will increasingly be represented as distributions, functions, images, networks, or other complex non-Euclidean random objects.
 
The work with my Chinese colleagues, Mingyang Yi, Zhiming Ma, and Ruoyu Wang, on diffusion models and measurement error opens the possibility of incorporating measurement uncertainty into biomedical decision-making. The main idea is to use general generative artificial intelligence methods within classical measurement error statistical pipelines, allowing the error generated by sensors, clinical measurements, and other biomedical technologies to be incorporated directly into the analysis.
 
Finally, the success of the new data-driven era will also depend on the development of new experimental and sampling designs. In joint work with Yating Zou and Michael Kosorok, we propose a new random forest methodology for complex survey data. The method has relevant inferential implications because the bootstrap procedure is applied at the node level. This opens new theoretical opportunities about how we can improve the performance of machine learning methods for complex sampling designs and, at the same time, provides a principled way to use large health datasets while preserving valid inference for the target population.
 
Together, these works define the main pillars of our research program: the new representation of digital health data, longitudinal and multilevel modeling, uncertainty quantification, generative AI-driven measurement-error correction, and statistically valid inference from complex biomedical studies.

<style>
  .highlighted-papers-slider {
    --highlighted-accent: #547f9d;

    position: relative;

    width: 100%;
    max-width: 900px;

    margin: 40px auto 65px;
    padding: 0 38px;

    box-sizing: border-box;
  }

  .highlighted-papers-viewport {
    width: 100%;
    overflow: hidden;

    border-radius: var(--rounded, 8px);

    cursor: grab;
    touch-action: pan-y;
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

    padding: 10px;

    box-sizing: border-box;
  }

  .highlighted-paper-card {
    display: flex;
    flex-direction: column;

    width: 100%;
    height: 100%;

    margin: 0;

    overflow: hidden;
    box-sizing: border-box;

    background: #ffffff;

    border:
      1px solid
      rgba(84, 127, 157, 0.17);

    border-radius: var(--rounded, 8px);

    box-shadow:
      0 14px 38px
      rgba(32, 49, 60, 0.1);
  }

  /*
    Esta caja siempre tiene la misma altura.
    Así, el carrusel no crece ni se encoge aunque
    los abstracts tengan dimensiones diferentes.
  */
  .highlighted-paper-image {
    display: flex;
    align-items: center;
    justify-content: center;

    width: 100%;
    height: clamp(400px, 52vw, 560px);

    padding: 20px 24px;

    overflow: hidden;
    box-sizing: border-box;

    background: #f7f9fa;
  }

  /*
    contain muestra el abstract completo:
    no lo recorta y no lo deforma.
  */
  .highlighted-paper-image img {
    display: block;

    width: 100%;
    height: 100%;

    object-fit: contain;
    object-position: center;

    background: #ffffff;
  }

  .highlighted-paper-information {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;

    width: 100%;
    height: 190px;

    padding: 24px 38px;

    box-sizing: border-box;

    background: #ffffff;

    border-top:
      1px solid
      rgba(84, 127, 157, 0.13);

    text-align: center;
  }

  .highlighted-paper-title {
    max-width: 760px;

    margin: 0;

    font-size:
      clamp(
        1.2rem,
        2vw,
        1.6rem
      );

    font-weight: 650;
    line-height: 1.28;

    color: #263b49;

    text-wrap: balance;
  }

  .highlighted-paper-authors {
    max-width: 730px;

    margin: 15px 0 0;

    font-size: 1rem;
    line-height: 1.5;

    color: #66757f;

    text-wrap: balance;
  }

  .highlighted-paper-arrow {
    position: absolute;
    top: 45%;
    z-index: 5;

    display: grid;
    place-items: center;

    width: 46px;
    height: 46px;

    padding: 0;

    border:
      1px solid
      rgba(84, 127, 157, 0.22);

    border-radius: 50%;

    background: #ffffff;
    color: #263b49;

    box-shadow:
      0 9px 25px
      rgba(32, 49, 60, 0.14);

    font-size: 27px;
    line-height: 1;

    cursor: pointer;

    transform: translateY(-50%);

    transition:
      transform 0.2s ease,
      background 0.2s ease,
      box-shadow 0.2s ease;
  }

  .highlighted-paper-arrow:hover {
    background: #f4f8fa;

    box-shadow:
      0 12px 30px
      rgba(32, 49, 60, 0.19);

    transform:
      translateY(-50%)
      scale(1.06);
  }

  .highlighted-paper-arrow.previous {
    left: 8px;
  }

  .highlighted-paper-arrow.next {
    right: 8px;
  }

  .highlighted-papers-dots {
    display: flex !important;
    align-items: center;
    justify-content: center;

    gap: 9px;

    min-height: 18px;
    margin-top: 16px;
  }

  .highlighted-paper-dot {
    display: block;

    width: 9px;
    height: 9px;

    padding: 0;
    border: 0;

    border-radius: 999px;

    background: var(--highlighted-accent);
    opacity: 0.25;

    cursor: pointer;

    transition:
      width 0.3s ease,
      opacity 0.3s ease,
      transform 0.3s ease;
  }

  .highlighted-paper-dot.is-active {
    width: 30px;
    opacity: 1;
  }

  .highlighted-paper-dot:hover {
    opacity: 0.7;
    transform: scale(1.1);
  }

  .highlighted-paper-arrow:focus-visible,
  .highlighted-paper-dot:focus-visible {
    outline:
      3px solid
      rgba(84, 127, 157, 0.5);

    outline-offset: 3px;
  }

  @media screen and (max-width: 768px) {
    .highlighted-papers-slider {
      max-width: 100%;

      margin: 28px auto 50px;
      padding: 0 8px;
    }

    .highlighted-paper-slide {
      padding: 6px;
    }

    .highlighted-paper-image {
      height: 410px;
      padding: 12px;
    }

    .highlighted-paper-information {
      height: auto;
      min-height: 185px;

      padding: 24px 42px;
    }

    .highlighted-paper-title {
      font-size: 1.15rem;
    }

    .highlighted-paper-authors {
      margin-top: 12px;
      font-size: 0.92rem;
    }

    .highlighted-paper-arrow {
      top: 43%;

      width: 38px;
      height: 38px;

      font-size: 22px;
    }

    .highlighted-paper-arrow.previous {
      left: 14px;
    }

    .highlighted-paper-arrow.next {
      right: 14px;
    }

    .highlighted-papers-dots {
      margin-top: 12px;
    }
  }

  @media screen and (max-width: 420px) {
    .highlighted-paper-image {
      height: 340px;
      padding: 8px;
    }

    .highlighted-paper-information {
      min-height: 190px;
      padding: 22px 38px;
    }

    .highlighted-paper-title {
      font-size: 1.02rem;
    }

    .highlighted-paper-authors {
      font-size: 0.85rem;
    }

    .highlighted-paper-arrow {
      width: 34px;
      height: 34px;

      font-size: 20px;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .highlighted-papers-track,
    .highlighted-paper-arrow,
    .highlighted-paper-dot {
      transition: none;
    }
  }
</style>

<div
  id="highlighted-papers-slider"
  class="highlighted-papers-slider"
  aria-label="Seven pillars publications"
  aria-roledescription="carousel"
>
  <div class="highlighted-papers-viewport">
    <div class="highlighted-papers-track">

      {% for paper in site.data.highlighted %}
        <article
          class="highlighted-paper-slide"
          aria-hidden="{% if forloop.first %}false{% else %}true{% endif %}"
        >
          <div class="highlighted-paper-card">

            <div class="highlighted-paper-image">
              <img
                src="{{ paper.image | relative_url }}"
                alt="Abstract of {{ paper.title | escape }}"
                loading="{% if forloop.first %}eager{% else %}lazy{% endif %}"
                decoding="async"
              >
            </div>

            <div class="highlighted-paper-information">
              <h3 class="highlighted-paper-title">
                {{ paper.title }}
              </h3>

              <p class="highlighted-paper-authors">
                {{ paper.authors }}
              </p>
            </div>

          </div>
        </article>
      {% endfor %}

    </div>
  </div>

  <button
    class="highlighted-paper-arrow previous"
    type="button"
    aria-label="Previous publication"
  >
    <span aria-hidden="true">‹</span>
  </button>

  <button
    class="highlighted-paper-arrow next"
    type="button"
    aria-label="Next publication"
  >
    <span aria-hidden="true">›</span>
  </button>

  <div
    class="highlighted-papers-dots"
    aria-label="Choose a publication"
  >
    {% for paper in site.data.highlighted %}
      <button
        class="highlighted-paper-dot{% if forloop.first %} is-active{% endif %}"
        type="button"
        data-slide="{{ forloop.index0 }}"
        aria-label="Show publication {{ forloop.index }}"
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
