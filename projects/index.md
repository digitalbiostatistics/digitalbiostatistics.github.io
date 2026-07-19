---
title: Projects
lang: en
translation_key: projects
nav:
  order: 2
  tooltip: Software, datasets, and more
---
<style>
  /* ---------- INTRODUCCIÓN ---------- */

  .projects-intro {
    max-width: 900px;
    margin-bottom: 55px;
  }

  .projects-lead {
    font-size: 1.08rem;
    line-height: 1.75;
  }

  .projects-intro p {
    line-height: 1.75;
  }


  /* ---------- ENCABEZADOS ANTIGUOS ---------- */
  /* Evita que se desplacen o se queden flotando si todavía
     queda algún <header> antiguo en el HTML. */

  .questions-main-header,
  .questions-section-header {
    position: static !important;
    inset: auto !important;
    top: auto !important;
    left: auto !important;
    right: auto !important;
    bottom: auto !important;
    transform: none !important;
    z-index: auto !important;
    width: auto !important;
    max-width: 900px;
    margin: 0 0 30px;
    padding: 0;
    background: transparent;
    box-shadow: none;
  }

  .questions-section {
    position: static !important;
    margin: 55px 0 70px;
  }

  .section-label {
    display: none;
  }


  /* ---------- CUADRÍCULA DE PREGUNTAS ---------- */

  .question-grid {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 20px;
    width: 100%;
    margin: 30px 0 70px;
    padding: 0;
    position: static;
  }


  /* ---------- RECUADROS AZULES ---------- */

  .question-card {
    position: static;
    display: block;
    box-sizing: border-box;
    min-width: 0;
    height: auto;
    margin: 0;
    padding: 24px 26px;

    background: #eef6fa;
    border: 1px solid #cbdfe9;
    border-radius: 14px;
    box-shadow: 0 5px 16px rgba(40, 78, 98, 0.08);

    overflow: visible;
    transform: none !important;
    transition: none !important;
    animation: none !important;
  }

  .question-card:hover,
  .question-card:focus,
  .question-card:focus-within {
    transform: none !important;
  }

  .question-card h3,
  .question-card h4 {
    margin: 0 0 12px;
    color: #254f65;
    font-size: 1.05rem;
    line-height: 1.4;
  }

 .question-card p {
  margin: 0;
  color: #314b59;
  font-size: 0.97rem;
  line-height: 1.65;

  text-align: left !important;
  word-spacing: normal !important;
  letter-spacing: normal;
}

  .question-card p + p {
    margin-top: 12px;
  }

  .question-card strong {
    color: #254f65;
  }


  /* ---------- PANTALLAS PEQUEÑAS ---------- */

  @media (max-width: 760px) {
    .projects-intro {
      margin-bottom: 40px;
    }

    .question-grid {
      grid-template-columns: 1fr;
      gap: 16px;
      margin: 24px 0 50px;
    }

    .question-card {
      padding: 21px 20px;
    }
  }
</style>

<div class="projects-page" markdown="1">

# Projects

<div class="projects-intro">

<p class="projects-lead">
  Our projects seek to establish the rigorous methodological foundations
  of digital biostatistics and demonstrate their practical value in
  biomedical research, clinical practice, and population health.
</p>

<div style="max-width: 800px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/projects.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

</div>
{% include section.html %}

## Open Questions We Are Working to Solve

Our research is structured around a set of open methodological,
applied, and clinical questions. These questions guide the development
of new statistical theory while ensuring that the resulting methods
address consequential problems in medicine and public health.


<div class="question-grid">

  <article class="question-card">


    <h4>E-values for High-Dimensional Multiple Testing</h4>

    <p>
      How can e-values be developed into a general framework for
      large-scale multiple-hypothesis testing in high-dimensional
      digital health studies?
    </p>

  </article>

  <article class="question-card">


    <h4>Conditional Predictive Inference for Random Objects</h4>

    <p>
      How can we construct predictive regions for random objects in
      metric spaces with strong—and, where possible, optimal—conditional
      coverage guarantees, without imposing restrictive smoothing
      assumptions?
    </p>

  </article>

  <article class="question-card">


    <h4>Optimal Conformal Prediction for Random-Effects Models</h4>

    <p>
      How can conformal prediction be extended to multilevel and
      random-effects models while preserving meaningful conditional
      coverage guarantees?
    </p>

  </article>

  <article class="question-card">


    <h4>Deep Learning Without Manifold Assumptions</h4>

    <p>
      What theoretical guarantees can be established for deep-learning
      algorithms operating on general non-Euclidean spaces without
      assuming that the observations lie on a smooth manifold,
      particularly in digital health applications?
    </p>

  </article>

  <article class="question-card question-card-wide">


    <h4>Mathematical Foundations of Distributional Data Analysis</h4>

    <p>
      What mathematical and statistical foundations are needed to
      establish distributional data analysis as a rigorous,
      interpretable, and broadly applicable framework for digital health?
    </p>

  </article>

</div>

{% include section.html %}

## Applied and Clinical Questions

Alongside these methodological challenges, we investigate major
applied questions through which advanced statistical methods could
produce tangible clinical and biomedical value.

<div class="question-grid">

  <article class="question-card">


    <h4>Genetic Discovery Using Digital Phenotypes</h4>

    <p>
      Can digital phenotypes reveal genetic associations that
      conventional clinical biomarkers fail to detect?
    </p>

  </article>

  <article class="question-card">

    <h4>Validation of Glucodensity as a Digital Biomarker</h4>

    <p>
      Can glucodensity and related distributional representations be
      validated as robust, reproducible, and more informative digital
      biomarkers of metabolic health?
    </p>

  </article>

  <article class="question-card">


    <h4>Glucose Variability and the Microbiome</h4>

    <p>
      What role does glucose variability play in the relationship between
      the microbiome and metabolic health, and how can continuous
      glucose-monitoring data improve its characterization?
    </p>

  </article>

  <article class="question-card">


    <h4>Continuous Glucose Monitoring and Retinopathy</h4>

    <p>
      How are continuous glucose-monitoring phenotypes associated with
      diabetic retinopathy and other microvascular complications?
    </p>

  </article>

  <article class="question-card question-card-wide">


    <h4>Phenotyping Continuous Biomedical Signals</h4>

    <p>
      How should continuous physiological signals be transformed into
      clinically meaningful and reproducible digital phenotypes, and what
      is required to establish a rigorous framework for CGM-based
      phenotyping in populations without diabetes?
    </p>

  </article>

</div>

## More

{% include list.html
  component="card"
  data="projects"
  filter="!group"
  style="small"
%}

</div>
