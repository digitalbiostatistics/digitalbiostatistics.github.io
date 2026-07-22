---
title: Teaching
lang: en
translation_key: teaching
description: 
nav:
  order: 5
  tooltip: Learn with us
---
<style>
  .teaching-quotes-slider {
    --teaching-quote-accent: #547f9d;

    position: relative;
    width: 100%;
    max-width: 760px;

    margin: 25px auto 45px;
    padding: 0 30px;

    box-sizing: border-box;
  }

  .teaching-quotes-viewport {
    width: 100%;
    overflow: hidden;

    border-radius: var(--rounded);

    cursor: grab;
    touch-action: pan-y;
  }

  .teaching-quotes-viewport:active {
    cursor: grabbing;
  }

  .teaching-quotes-track {
    display: flex;
    align-items: stretch;

    width: 100%;

    transition:
      transform 0.6s
      cubic-bezier(0.22, 1, 0.36, 1);

    will-change: transform;
  }

  .teaching-quote-slide {
    display: flex;
    align-items: stretch;

    flex: 0 0 100%;

    width: 100%;
    min-width: 100%;

    padding: 6px;

    box-sizing: border-box;
  }

  .teaching-quote-card {
    position: relative;

    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;

    width: 100%;
    min-height: 190px;

    margin: 0;
    padding: 32px 55px 27px;

    box-sizing: border-box;
    overflow: hidden;

    background:
      linear-gradient(
        135deg,
        rgba(244, 248, 250, 0.98),
        rgba(255, 255, 255, 0.98)
      );

    border:
      1px solid
      rgba(84, 127, 157, 0.18);

    border-radius: var(--rounded);

    box-shadow:
      0 10px 28px
      rgba(32, 49, 60, 0.08);

    text-align: center;
  }

  .teaching-quote-mark {
    position: absolute;
    top: 3px;
    left: 20px;

    font-family: Georgia, serif;
    font-size: 5rem;
    line-height: 1;

    color: var(--teaching-quote-accent);
    opacity: 0.12;

    pointer-events: none;
    user-select: none;
  }

  .teaching-quote-text {
    position: relative;
    z-index: 1;

    max-width: 620px;
    margin: 0;

    font-family: Georgia, serif;
    font-size: clamp(1.15rem, 2vw, 1.55rem);
    font-style: italic;
    line-height: 1.4;

    color: #263b49;

    text-wrap: balance;
  }

  .teaching-quote-author {
    position: relative;
    z-index: 1;

    display: block;

    width: auto;
    min-height: 0;

    margin: 18px 0 0;
    padding: 0;

    background: transparent;
    border: 0;
    border-radius: 0;
    box-shadow: none;

    font-size: 0.82rem;
    font-weight: 600;
    letter-spacing: 0.05em;
    line-height: 1.3;
    text-align: center;
    text-transform: uppercase;

    color: var(--teaching-quote-accent);
  }

  .teaching-quote-arrow {
    position: absolute;
    top: 50%;
    z-index: 5;

    display: grid;
    place-items: center;

    width: 38px;
    height: 38px;
    padding: 0;

    border:
      1px solid
      rgba(84, 127, 157, 0.22);

    border-radius: 50%;

    background: #ffffff;
    color: #263b49;

    box-shadow:
      0 7px 20px
      rgba(32, 49, 60, 0.12);

    font-size: 18px;
    line-height: 1;

    cursor: pointer;

    transform: translateY(-50%);

    transition:
      transform 0.2s ease,
      box-shadow 0.2s ease,
      background 0.2s ease;
  }

  .teaching-quote-arrow:hover {
    background: #f4f8fa;

    box-shadow:
      0 10px 24px
      rgba(32, 49, 60, 0.18);

    transform:
      translateY(-50%)
      scale(1.06);
  }

  .teaching-quote-arrow.previous {
    left: 10px;
  }

  .teaching-quote-arrow.next {
    right: 10px;
  }

  .teaching-quotes-dots {
    display: flex;
    align-items: center;
    justify-content: center;

    gap: 8px;

    min-height: 16px;
    margin-top: 12px;
  }

  .teaching-quote-dot {
    display: block;

    width: 8px;
    height: 8px;

    padding: 0;
    border: 0;
    border-radius: 999px;

    background: var(--teaching-quote-accent);
    opacity: 0.28;

    cursor: pointer;

    transition:
      width 0.3s ease,
      opacity 0.3s ease,
      transform 0.3s ease;
  }

  .teaching-quote-dot.is-active {
    width: 26px;
    opacity: 1;
  }

  .teaching-quote-dot:hover {
    opacity: 0.75;
    transform: scale(1.1);
  }

  .teaching-quote-arrow:focus-visible,
  .teaching-quote-dot:focus-visible {
    outline:
      3px solid
      rgba(84, 127, 157, 0.55);

    outline-offset: 3px;
  }

  @media screen and (max-width: 768px) {
    .teaching-quotes-slider {
      max-width: 100%;

      margin: 22px auto 40px;
      padding: 0 10px;
    }

    .teaching-quote-slide {
      padding: 5px;
    }

    .teaching-quote-card {
      min-height: 220px;
      padding: 35px 42px 28px;
    }

    .teaching-quote-mark {
      top: 7px;
      left: 17px;

      font-size: 4.5rem;
    }

    .teaching-quote-text {
      font-size:
        clamp(
          1.05rem,
          4.7vw,
          1.35rem
        );
    }

    .teaching-quote-author {
      margin-top: 16px;
      font-size: 0.75rem;
    }

    .teaching-quote-arrow {
      width: 34px;
      height: 34px;

      font-size: 16px;
    }

    .teaching-quote-arrow.previous {
      left: 12px;
    }

    .teaching-quote-arrow.next {
      right: 12px;
    }
  }

  @media screen and (max-width: 420px) {
    .teaching-quote-card {
      min-height: 235px;
      padding: 38px 37px 27px;
    }

    .teaching-quote-text {
      font-size: 1.05rem;
    }

    .teaching-quote-arrow {
      width: 31px;
      height: 31px;

      font-size: 15px;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .teaching-quotes-track,
    .teaching-quote-arrow,
    .teaching-quote-dot {
      transition: none;
    }
  }
</style>

# Teaching

<div
  id="teaching-quotes-slider"
  class="teaching-quotes-slider"
  aria-label="Teaching philosophy quotes"
  aria-roledescription="carousel"
>
  <div class="teaching-quotes-viewport">
    <div class="teaching-quotes-track">

      {% for item in site.data.teaching_quotes %}
        <article
          class="teaching-quote-slide"
          aria-hidden="{% if forloop.first %}false{% else %}true{% endif %}"
        >
          <blockquote class="teaching-quote-card">
            <span
              class="teaching-quote-mark"
              aria-hidden="true"
            >
              “
            </span>

            <p class="teaching-quote-text">
              {{ item.quote }}
            </p>

            <p class="teaching-quote-author">
              — {{ item.author }}
            </p>
          </blockquote>
        </article>
      {% endfor %}

    </div>
  </div>

  <button
    class="teaching-quote-arrow previous"
    type="button"
    aria-label="Previous quote"
  >
    &#10094;
  </button>

  <button
    class="teaching-quote-arrow next"
    type="button"
    aria-label="Next quote"
  >
    &#10095;
  </button>

  <div
    class="teaching-quotes-dots"
    aria-label="Choose a quote"
  >
    {% for item in site.data.teaching_quotes %}
      <button
        class="teaching-quote-dot{% if forloop.first %} is-active{% endif %}"
        type="button"
        data-slide="{{ forloop.index0 }}"
        aria-label="Show quote {{ forloop.index }}"
        {% if forloop.first %}
          aria-current="true"
        {% endif %}
      ></button>
    {% endfor %}
  </div>
</div>

<script
  src="{{ '/assets/js/teaching-quotes.js' | relative_url }}"
  defer
></script>

<div style="max-width: 600px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/marcosbb.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

{% include section.html %}
<div style="max-width: 800px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/collage-teaching-1.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

<div style="max-width: 800px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/collage-teaching-2.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

<div style="max-width: 800px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/collage-teaching-3.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>
<div style="max-width: 800px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/collage-teaching-4.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

{% include section.html %}

## Opinion & Perspectives

**Oxford and Tomorrow’s Lesson: The Institution You Cannot See**

An opinion article from a national Spaish newspaper written by Marcos Matabuena. It explores whether universities can remain relevant in the age of artificial intelligence.

<div style="max-width: 600px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/la-voz-ingles.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

<p>To read the original article, click <a href="https://www.lavozdegalicia.es/noticia/opinion/2025/06/01/oxford-leccion-manana-institucion-ves/0003_202506G1P18995.htm" target="_blank" rel="noopener noreferrer">here</a>.</p>

** AI evolution in Medicine in the future **

<p>To read the original article, click <a href="https://www.lavozdegalicia.es/noticia/lavozdelasalud/enfermedades/2025/04/03/marcos-matabuena-investigador-gallego-harvard-bill-gates-acaba-predecir-diez-anos-medicos-tendran-rol-bastante-diferente-actual/00031743692850087318685.htm" target="_blank" rel="noopener noreferrer">here</a>.</p>
<div style="max-width: 600px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/lavozdegalicia2.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

## Universal Literature for the Age of Artificial Intelligence and Beyond