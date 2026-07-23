---
lang: en 
translation_key: home
---

<style>
  .home-hero {
    position: relative;
    width: 100%;
    margin: 20px auto 70px;
    padding: clamp(38px, 7vw, 82px) clamp(24px, 6vw, 78px);
    box-sizing: border-box;
    overflow: hidden;
    border: 1px solid rgba(84, 127, 157, 0.16);
    border-radius: 28px;
    background:
      radial-gradient(
        circle at 88% 15%,
        rgba(84, 127, 157, 0.17),
        transparent 34%
      ),
      radial-gradient(
        circle at 8% 92%,
        rgba(175, 201, 218, 0.18),
        transparent 30%
      ),
      linear-gradient(
        135deg,
        rgba(255, 255, 255, 0.98),
        rgba(245, 250, 252, 0.96)
      );
    box-shadow:
      0 24px 65px rgba(32, 49, 60, 0.08),
      0 4px 14px rgba(32, 49, 60, 0.04);
  }

  .home-hero::before {
    content: "";
    position: absolute;
    top: -110px;
    right: -90px;
    width: 280px;
    height: 280px;
    border: 1px solid rgba(84, 127, 157, 0.13);
    border-radius: 50%;
    animation: hero-float 9s ease-in-out infinite;
  }

  .home-hero::after {
    content: "";
    position: absolute;
    right: 12%;
    bottom: -145px;
    width: 230px;
    height: 230px;
    border: 1px solid rgba(84, 127, 157, 0.1);
    border-radius: 50%;
    animation: hero-float 12s ease-in-out infinite reverse;
  }

  .home-hero-content {
    position: relative;
    z-index: 1;
    max-width: 930px;
  }

  .home-hero-label {
    margin: 0 0 12px;
    font-size: 0.78rem;
    font-weight: 700;
    letter-spacing: 0.18em;
    text-transform: uppercase;
    color: #547f9d;
    opacity: 0;
    animation: hero-reveal 0.7s ease forwards;
  }

  .home-hero-title {
    margin: 0;
    font-size: clamp(2.4rem, 6vw, 5.4rem);
    line-height: 1.02;
    letter-spacing: -0.045em;
    font-weight: 780;
    background: linear-gradient(
      110deg,
      #17242d 10%,
      #547f9d 48%,
      #17242d 85%
    );
    background-size: 220% auto;
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    opacity: 0;
    animation:
      hero-reveal 0.85s 0.12s ease forwards,
      hero-shimmer 8s 1.2s ease-in-out infinite;
  }

  .home-hero-quote {
    max-width: 780px;
    margin: 28px 0 34px;
    padding-left: 22px;
    border-left: 3px solid rgba(84, 127, 157, 0.55);
    font-family: Georgia, "Times New Roman", serif;
    font-size: clamp(1.2rem, 2.2vw, 1.65rem);
    line-height: 1.55;
    font-style: italic;
    color: #263b49;
    opacity: 0;
    transform: translateY(18px);
    animation: hero-reveal 0.8s 0.35s ease forwards;
  }

  .home-hero-text {
    max-width: 880px;
    margin: 0 0 19px;
    font-size: clamp(1.02rem, 1.5vw, 1.22rem);
    line-height: 1.8;
    color: #26343d;
    opacity: 0;
    transform: translateY(20px);
  }

  .home-hero-text.first {
    animation: hero-reveal 0.8s 0.58s ease forwards;
  }

  .home-hero-text.second {
    animation: hero-reveal 0.8s 0.8s ease forwards;
  }

  .hero-highlight {
    position: relative;
    display: inline;
    font-weight: 650;
    color: #274e68;
    background-image: linear-gradient(
      transparent 66%,
      rgba(124, 174, 204, 0.28) 66%
    );
    background-repeat: no-repeat;
    background-size: 0% 100%;
    animation: highlight-draw 1.15s 1.35s ease forwards;
  }

  .home-hero-title a,
  .home-hero-title .anchor,
  .home-hero-title .header-link,
  .home-hero-title .heading-anchor {
    display: none !important;
  }

  .home-hero-title::before,
  .home-hero-title::after {
    content: none !important;
    display: none !important;
  }

  @keyframes hero-reveal {
    from {
      opacity: 0;
      transform: translateY(20px);
      filter: blur(4px);
    }

    to {
      opacity: 1;
      transform: translateY(0);
      filter: blur(0);
    }
  }

  @keyframes hero-shimmer {
    0%,
    100% {
      background-position: 0% center;
    }

    50% {
      background-position: 100% center;
    }
  }

  @keyframes highlight-draw {
    from {
      background-size: 0% 100%;
    }

    to {
      background-size: 100% 100%;
    }
  }

  @keyframes hero-float {
    0%,
    100% {
      transform: translate3d(0, 0, 0);
    }

    50% {
      transform: translate3d(-12px, 16px, 0);
    }
  }

  @media screen and (max-width: 768px) {
    .home-hero {
      margin: 12px auto 48px;
      padding: 38px 24px 42px;
      border-radius: 22px;
    }

    .home-hero-title {
      letter-spacing: -0.035em;
    }

    .home-hero-quote {
      margin-top: 22px;
      margin-bottom: 27px;
      padding-left: 17px;
    }

    .home-hero-text {
      line-height: 1.7;
    }

    .home-hero::before {
      width: 190px;
      height: 190px;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .home-hero::before,
    .home-hero::after,
    .home-hero-label,
    .home-hero-title,
    .home-hero-quote,
    .home-hero-text,
    .hero-highlight {
      animation: none !important;
      opacity: 1;
      transform: none;
      filter: none;
      background-size: 100% 100%;
    }
  }

  .homepage-music {
    display: flex;
    justify-content: center;

    margin: 24px auto;
  }

  .homepage-audio-button {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 10px;

    padding: 11px 19px;

    border: 1px solid rgba(84, 127, 157, 0.28);
    border-radius: 999px;

    background: rgba(255, 255, 255, 0.92);
    color: #263b49;

    box-shadow:
      0 7px 20px rgba(32, 49, 60, 0.1);

    font: inherit;
    font-size: 0.92rem;
    font-weight: 600;

    cursor: pointer;

    transition:
      transform 0.2s ease,
      background 0.2s ease,
      box-shadow 0.2s ease;
  }

  .homepage-audio-button:hover {
    background: #f4f8fa;

    box-shadow:
      0 10px 25px rgba(32, 49, 60, 0.15);

    transform: translateY(-1px);
  }

  .homepage-audio-button:focus-visible {
    outline: 3px solid rgba(84, 127, 157, 0.45);
    outline-offset: 3px;
  }

  .homepage-audio-icon {
    width: 1em;
    text-align: center;
  }
</style>

<section
  class="home-hero"
  aria-label="Digital Biostatistics introduction"
>
  <div class="home-hero-content">

    <div
      class="home-hero-title"
      role="heading"
      aria-level="1"
    >
      DIGITAL BIOSTATISTICS
    </div>

    <p class="home-hero-quote">
      No matter how high the mountain, there is always a path to the summit.
    </p>

    <p class="home-hero-text first">
      What is the best diet for each person? Can we predict which diseases
      someone may develop over the next twenty years—and
      <span class="hero-highlight">act before they appear?</span>
    </p>

    <p class="home-hero-text second">
      Answering questions like these requires a new scientific framework that
      brings together
      <span class="hero-highlight">biostatistics</span>,
      artificial intelligence, digital health, and clinical decision-making.
    </p>

  </div>
</section>

<div style="max-width: 900px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/horizontalguy.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>


## Welcome

Welcome to the website of Marcos Matabuena’s research group.

Digital health has the potential to identify disease risks years—or even decades—before clinical symptoms emerge. Our mission is to develop the mathematical, statistical, and artificial intelligence methods needed to make this transformation possible, based on continuous-time information collected through modern medical devices. Ultimately, we aim to move beyond the treatment of disease toward the continuous, real-time optimization of individual and population health.
<div style="max-width: 560px; margin: 30px auto;">
  <iframe
    style="width: 100%; aspect-ratio: 16 / 9; border: 0;"
    src="https://www.youtube.com/embed/UnkboTF1Bhk"
    title="YouTube video player"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
    referrerpolicy="strict-origin-when-cross-origin"
    allowfullscreen>
  </iframe>
</div>

## What is the Core of Digital Biostatistics
We define <strong> digital biostatistics </strong> as the branch of biostatistics concerned with the design, analysis, statistical inference, and clinical translation of continuously collected, high-frequency, longitudinal, and multimodal health data generated by digital technologies, with the ultimate goal of supporting clinical and healthcare decision-making by integrating biostatistics with operations research.
</p>

<div style="max-width: 950px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/projects.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

</div>
{% include section.html %}

This vision has been shaped by formative experiences, mentorship, and collaborations at Harvard, Johns Hopkins, and the University of North Carolina at Chapel Hill, particularly in digital phenotyping, functional data analysis, personalized medicine, and longitudinal health data.

<style>
  .dual-videos {
    display: flex !important;
    flex-direction: row !important;
    flex-wrap: wrap !important;
    align-items: stretch !important;
    gap: 24px !important;
    width: 100% !important;
    max-width: 1200px !important;
    margin: 30px auto !important;
  }

  .dual-videos .dual-video {
    display: block !important;
    flex: 0 0 calc(50% - 12px) !important;
    width: calc(50% - 12px) !important;
    max-width: calc(50% - 12px) !important;
    min-width: 0 !important;
    margin: 0 !important;
    padding: 0 !important;
  }

  .dual-videos .dual-video iframe {
    display: block !important;
    width: 100% !important;
    height: auto !important;
    aspect-ratio: 16 / 9 !important;
    margin: 0 !important;
    padding: 0 !important;
    border: 0 !important;
  }

  @media screen and (max-width: 768px) {
    .dual-videos {
      flex-direction: column !important;
      flex-wrap: nowrap !important;
    }

    .dual-videos .dual-video {
      flex: 0 0 100% !important;
      width: 100% !important;
      max-width: 100% !important;
    }
  }
</style>

<div class="dual-videos" markdown="0">
  <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/aI8VAvqbvg0"
      title="Jukka-Pekka 'JP' Onnela 'Smartphone Based Digital Phenotyping'"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>

  <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/IsbcQo8LgyQ"
      title="Dr. Michael Kosorok (UNC) 'Clinical trial design for precision medicine'"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>
</div>

{% include section.html %}

Our projects seek to establish the rigorous methodological foundations of digital biostatistics and demonstrate their practical value in biomedical research, clinical practice, and population health.

Over the next ten years, our ultimate research goal is to develop a low-cost healthcare operations framework that improves health outcomes at both the individual and population levels by integrating biostatistics, digital health, and operations research.

<div style="max-width: 560px; margin: 30px auto;">
  <iframe
    style="width: 100%; aspect-ratio: 16 / 9; border: 0;"
    src="https://www.youtube.com/embed/lZjDMStecZc"
    title="YouTube video player 3"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
    referrerpolicy="strict-origin-when-cross-origin"
    allowfullscreen>
  </iframe>
</div>

## Our Vision: Why Digital Biostatistics Is Essential to the Future of Artificial Intelligence in Medicine
Artificial intelligence in medicine is still at an early stage, and only a small fraction of its potential has been demonstrated in real-world clinical practice. From a statistical learning perspective, many current applications still address relatively simple and well-defined prediction tasks. The next generation of medical AI, however, will need to confront substantially more complex and clinically consequential questions: What is the optimal diet for a particular person? How should treatment and prevention strategies evolve over time? How can heterogeneous clinical, biological, behavioral, and environmental information be integrated into a unified decision-making framework?

Digital biostatistics can provide the scientific foundation needed to address these challenges. Powerful AI systems may perform well on specific prediction tasks, but prediction alone is not sufficient in real-world clinical and healthcare settings. Their outputs must be supported by rigorous statistical inference, uncertainty quantification, careful experimental and observational study design, and methods capable of analyzing continuous, longitudinal, high-frequency, and multimodal health data. These components must ultimately be integrated with operations research to translate predictions into reliable clinical decisions and more effective healthcare operations.

Over the next 10 to 15 years, advances in AI, together with our growing capacity to measure biological systems almost continuously and at population scale, may transform biomedical research. They could enable a new generation of scientific discoveries, accelerate the development of personalized therapies, and improve our understanding of complex diseases. This progress may be particularly important in areas where current therapeutic options remain limited, including neurological disorders such as amyotrophic lateral sclerosis, as well as in pharmaceutical discovery and personalized medicine.

We expect increasingly detailed longitudinal metabolic and physiological phenotypes to emerge from wearable devices, medical sensors, imaging, genomics, microbiome data, electronic health records, and other digital technologies. The central challenge will not simply be to collect or process more data. It will be to develop scientifically valid frameworks that can identify biologically meaningful patterns, distinguish association from causation, quantify uncertainty, and support decisions that adapt to each individual over time.

In this context, digital biostatistics is not a secondary component of medical AI. It provides the scientific and mathematical foundations required to transform increasingly powerful AI systems into rigorous, interpretable, and clinically useful tools.

<div style="
  display: flex;
  flex-wrap: wrap;
  gap: 24px;
  width: 100%;
  max-width: 1200px;
  margin: 30px auto;
">

  <div style="
    flex: 1 1 320px;
    min-width: 0;
    margin: 0;
    padding: 0;
  ">
    <iframe
      style="
        display: block;
        width: 100%;
        aspect-ratio: 16 / 9;
        border: 0;
        margin: 0;
        padding: 0;
      "
      src="https://www.youtube.com/embed/tIgO_Sjh3tQ"
      title="YouTube video player 1"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>

  <div style="
    flex: 1 1 320px;
    min-width: 0;
    margin: 0;
    padding: 0;
  ">
    <iframe
      style="
        display: block;
        width: 100%;
        aspect-ratio: 16 / 9;
        border: 0;
        margin: 0;
        padding: 0;
      "
      src="https://www.youtube.com/embed/0z03xkwFbw4"
      title="YouTube video player 2"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>

</div>

{% include section.html %}

## Highlights

{% capture text %}

We are pioneering the use of non-Euclidean statistical methods to define a new generation of digital biomarkers. Our work introduced the concept of glucodensity, a comprehensive biomarker designed to summarize digital health data collected under free-living conditions. We also develop modern machine learning techniques and novel uncertainty quantification methods for complex, high-dimensional data, enabling us to fully exploit the rich, dense, and longitudinal information generated by digital health technologies.

{%
  include button.html
  link="research"
  text="See our publications"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/OurResearch.png"
  link="research"
  title="Our Research"
  text=text
%}

### Our Seven Pillars for Advancing Digital Health Research and Healthcare Decision-Making

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
    height: clamp(240px, 32vw, 340px);

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
      height: 260px;
      padding: 10px;
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
      height: 220px;
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

{% capture text %}

Our current projects focus on developing a new generation of statistical AI methods capable of transforming the vast amounts of information collected by digital devices into clinically meaningful knowledge. We aim to demonstrate, through real-world medical problems, how these methods can produce tangible advances in clinical research and practice.

{%
  include button.html
  link="projects"
  text="Browse our projects"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/ourprojects_web.png"
  link="projects"
  title="Our Projects"
  flip=true
  style="bare"
  text=text
%}

{% capture text %}

An interdisciplinary team working at the intersection of statistics, artificial intelligence, and biomedical research, with a global network of leading collaborators.

{%
  include button.html
  link="team"
  text="Meet our team"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/collageconsolo1pelado.png"
  link="team"
  title="Our Team"
  text=text
%}

## Join Us
We are building an interdisciplinary research program at the intersection of biostatistics, artificial intelligence, digital health, and medicine. We welcome ambitious students and collaborators interested in developing rigorous methods around consequential biomedical questions.

{%
  include button.html
  link="projects"
  text="Explore Opportunities"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{%
  include button.html
  link="team"
  text="Meet the Team"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

We believe that important scientific problems require rigor, imagination, perseverance, and generous collaboration.

<div style="max-width: 900px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/horizontalguy.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

<div class="homepage-music">
  <audio
    id="homepage-audio"
    preload="metadata"
    loop
  >
    <source
      src="{{ '/assets/flamenco.mp3' | relative_url }}"
      type="audio/mpeg"
    >
    Your browser does not support audio playback.
  </audio>

  <button
    id="homepage-audio-button"
    class="homepage-audio-button"
    type="button"
    aria-label="Play background music"
  >
    <span class="homepage-audio-icon" aria-hidden="true">
      ▶
    </span>

    <span class="homepage-audio-label">
      Play music
    </span>
  </button>
</div>

<script
  src="{{ '/assets/js/homepage-audio.js' | relative_url }}"
  defer
></script>