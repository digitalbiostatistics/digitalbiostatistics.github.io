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

## The Future of Artificial Intelligence in Medicine

Artificial intelligence in medicine is still in its early stages, and only a small fraction of its potential has been demonstrated in real-world clinical practice. Most current applications address relatively simple and well-defined problems from a statistical learning perspective.

Over the next 10 to 15 years, we expect to witness advances that are difficult to imagine today, particularly in neurological disorders such as ALS. New biological discoveries will emerge, comparable to the recent progress made in solving open mathematical problems using AI tools. The next frontier in biomedical research is the development of longitudinal, causal, and data-driven models that use AI tools to support revolutionary therapies and drug discovery. We will have access to metabolic phenotype profiles containing information at a level never seen before.

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

## Our Ultimate Goal

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

{% capture text %}

Our current projects focus on developing a new generation of statistical AI methods capable of transforming the vast amounts of information collected by digital devices into clinically meaningful knowledge. We aim to demonstrate, through real-world medical problems, how these methods can produce tangible advances in clinical research and practice.

### Our Seven Pillars for Advancing Digital Health Research and Healthcare Decision-Making


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

## Testimonials

<style>
  .testimonials-slider {
    --testimonial-accent: #547f9d;
    position: relative;
    width: 100%;
    max-width: 1050px;
    margin: 40px auto 70px;
    padding: 0 34px;
    box-sizing: border-box;
  }

  .testimonials-viewport {
    overflow: hidden;
    border-radius: 28px;
    touch-action: pan-y;
    cursor: grab;
  }

  .testimonials-viewport:active {
    cursor: grabbing;
  }

  .testimonials-track {
    display: flex !important;
    align-items: stretch !important;
    width: 100%;
    transition: transform 0.6s cubic-bezier(0.22, 1, 0.36, 1);
    will-change: transform;
  }

  .testimonial-slide {
    display: flex !important;
    align-items: stretch !important;
    flex: 0 0 100% !important;
    width: 100% !important;
    min-width: 100% !important;
    box-sizing: border-box;

    /* Espacio interior para que la sombra no sea recortada */
    padding: 14px 14px 32px;
  }

  .testimonial-card {
    position: relative;
    display: grid;
    grid-template-columns: 190px minmax(0, 1fr);
    align-items: center;
    gap: 44px;

    width: 100%;
    min-height: 390px;
    padding: 46px 54px;
    box-sizing: border-box;

    overflow: hidden;
    border: 1px solid rgba(84, 127, 157, 0.18);
    border-radius: 24px;

    background:
      radial-gradient(
        circle at top right,
        rgba(84, 127, 157, 0.12),
        transparent 35%
      ),
      #ffffff;

    box-shadow:
      0 22px 35px rgba(32, 49, 60, 0.12),
      0 5px 12px rgba(32, 49, 60, 0.07);

    flex: 1 1 auto;
  }

  .testimonial-photo-wrapper {
    position: relative;
    width: 180px;
    height: 180px;
    margin: auto;
  }

  .testimonial-photo-wrapper::before {
    content: "";
    position: absolute;
    inset: -9px;
    border: 2px solid rgba(84, 127, 157, 0.18);
    border-radius: 50%;
  }

  .testimonial-photo {
    position: relative;
    width: 180px;
    height: 180px;
    display: block;
    object-fit: cover;
    border-radius: 50%;
    background: #eef3f6;
  }

  .testimonial-content {
    position: relative;
    min-width: 0;
  }

  .testimonial-quote-mark {
    position: absolute;
    top: -32px;
    left: -5px;
    font-family: Georgia, serif;
    font-size: 90px;
    line-height: 1;
    color: var(--testimonial-accent);
    opacity: 0.16;
    pointer-events: none;
  }

  .testimonial-text {
    position: relative;
    margin: 0 0 26px;
    font-size: 1.06rem;
    line-height: 1.75;
  }

  .testimonial-name {
    margin: 0;
    font-size: 1.05rem;
    font-weight: 750;
  }

  .testimonial-role {
    margin: 6px 0 0;
    font-size: 0.92rem;
    line-height: 1.5;
    opacity: 0.68;
  }

  .testimonial-arrow {
    position: absolute;
    top: 50%;
    z-index: 5;
    width: 48px;
    height: 48px;
    display: grid;
    place-items: center;
    padding: 0;
    border: 1px solid rgba(84, 127, 157, 0.22);
    border-radius: 50%;
    background: #ffffff;
    color: #263b49;
    box-shadow: 0 10px 28px rgba(32, 49, 60, 0.14);
    cursor: pointer;
    transform: translateY(-50%);
    transition:
      transform 0.2s ease,
      box-shadow 0.2s ease,
      background 0.2s ease;
  }

  .testimonial-arrow:hover {
    background: #f4f8fa;
    box-shadow: 0 13px 32px rgba(32, 49, 60, 0.2);
    transform: translateY(-50%) scale(1.08);
  }

  .testimonial-arrow.previous {
    left: 7px;
  }

  .testimonial-arrow.next {
    right: 7px;
  }

  .testimonial-dots {
    display: flex !important;
    justify-content: center;
    align-items: center;
    gap: 10px;
    min-height: 22px;
    margin-top: 24px;
  }

  .testimonial-dot {
    width: 10px;
    height: 10px;
    display: block;
    padding: 0;
    border: 0;
    border-radius: 999px;
    background: var(--testimonial-accent);
    opacity: 0.28;
    cursor: pointer;
    transition:
      width 0.3s ease,
      opacity 0.3s ease,
      transform 0.3s ease;
  }

  .testimonial-dot.is-active {
    width: 34px;
    opacity: 1;
  }

  .testimonial-dot:hover {
    opacity: 0.75;
    transform: scale(1.12);
  }

  .testimonial-arrow:focus-visible,
  .testimonial-dot:focus-visible {
    outline: 3px solid rgba(84, 127, 157, 0.55);
    outline-offset: 3px;
  }

  @media screen and (max-width: 768px) {
    .testimonials-slider {
      margin: 28px auto 60px;
      padding: 0 8px;
    }

    .testimonial-card {
      grid-template-columns: 1fr;
      align-content: center;
      gap: 27px;
      min-height: 540px;
      padding: 38px 25px 42px;
      text-align: center;
    }

    .testimonial-photo-wrapper,
    .testimonial-photo {
      width: 132px;
      height: 132px;
    }

    .testimonial-content {
      padding-top: 12px;
    }

    .testimonial-quote-mark {
      top: -28px;
      left: 50%;
      font-size: 72px;
      transform: translateX(-50%);
    }

    .testimonial-text {
      margin-bottom: 22px;
      font-size: 0.98rem;
      line-height: 1.65;
    }

    .testimonial-arrow {
      top: 120px;
      width: 40px;
      height: 40px;
    }

    .testimonial-arrow.previous {
      left: 16px;
    }

    .testimonial-arrow.next {
      right: 16px;
    }

    .testimonial-slide {
      padding: 10px 8px 28px;
    }
  }

  @media screen and (max-width: 420px) {
    .testimonial-card {
      min-height: 570px;
      padding-right: 19px;
      padding-left: 19px;
    }

    .testimonial-photo-wrapper,
    .testimonial-photo {
      width: 112px;
      height: 112px;
    }

    .testimonial-arrow {
      top: 105px;
      width: 36px;
      height: 36px;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .testimonials-track {
      transition: none;
    }
  }
</style>

<div
  class="testimonials-slider"
  id="testimonials-slider"
  aria-label="Testimonials"
>
  <div class="testimonials-viewport">
    <div class="testimonials-track">

      <article class="testimonial-slide">
        <div class="testimonial-card">
          <div class="testimonial-photo-wrapper">
            <img
              class="testimonial-photo"
              src="{{ '/images/yating.jpeg' | relative_url }}"
              alt="Portrait of Yating Zou"
            >
          </div>

          <div class="testimonial-content">
            <p class="testimonial-text">
              Marcos is an remarkably sharp, enthusiastic collaborator who stays closely attuned to the literature and is quick to connect ideas across problems. He thinks fast, engages directly, and brings genuine commitment to statistically principled work grounded in real, important biomedical questions. Beyond the research, he has been a great friend and a source of real support in my own scientific journey. I’m sure he’ll accomplish great things, and I look forward to continuing our work together at the intersection of statistical methodology and digital health!
            </p>

            <p class="testimonial-name">Yating Zou</p>

            <p class="testimonial-role">
              Biostatistics PhD Student at UNC-CH
            </p>
          </div>
        </div>
      </article>

      <article class="testimonial-slide">
        <div class="testimonial-card">
          <div class="testimonial-photo-wrapper">
            <img
              class="testimonial-photo"
              src="{{ '/images/cris.png' | relative_url }}"
              alt="Portrait of Cristina Correa"
            >
          </div>

          <div class="testimonial-content">
            <p class="testimonial-text">
              Marcos has been an amazing supervisor and, honestly, one of the most positive influences on my academic career so far. He is incredibly hardworking and someone I really look up to. He has opened my eyes to opportunities I had never considered before and encouraged me to be more ambitious in both my research and my academic career. Having him as a mentor has made me a much better researcher, and I feel very lucky to be part of his research lab.
            </p>

            <p class="testimonial-name">Cristina Correa</p>

            <p class="testimonial-role">
              Computational Biology Master Student at MBZUAI
            </p>
          </div>
        </div>
      </article>

      <article class="testimonial-slide">
        <div class="testimonial-card">
          <div class="testimonial-photo-wrapper">
            <img
              class="testimonial-photo"
              src="{{ '/images/antonio.png' | relative_url }}"
              alt="Portrait of Antonio Álvarez"
            >
          </div>

          <div class="testimonial-content">
            <p class="testimonial-text">
              In the highly competitive world of science, Marcos stands out for his human approach. He puts personal relationships first, as reflected in the exceptional care he shows the many people in his network of collaborators. I have known him for several years, and over the past eighteen months we have written two papers together—one of which received an award—, an experience that has only reinforced my admiration for his dedication and teamwork. Marcos works tirelessly toward an ambitious and meaningful goal that goes far beyond mathematics: making a positive impact on society through the statistical and AI methods he develops for digital health. He is a brilliant researcher and a collaborator you can always count on.
            </p>

            <p class="testimonial-name">Antonio Álvarez</p>

            <p class="testimonial-role">
              Postdoc at Nanyang Technological University
            </p>
          </div>
        </div>
      </article>
    </div>
  </div>

  <button
    class="testimonial-arrow previous"
    type="button"
    aria-label="Previous testimonial"
  >
    &#10094;
  </button>

  <button
    class="testimonial-arrow next"
    type="button"
    aria-label="Next testimonial"
  >
    &#10095;
  </button>

  <div class="testimonial-dots" aria-label="Choose a testimonial">
    <button
      class="testimonial-dot is-active"
      type="button"
      data-slide="0"
      aria-label="Show testimonial 1"
    ></button>

    <button
      class="testimonial-dot"
      type="button"
      data-slide="1"
      aria-label="Show testimonial 2"
    ></button>
  </div>
</div>
<script src="{{ '/assets/js/testimonials.js' | relative_url }}" defer></script>

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