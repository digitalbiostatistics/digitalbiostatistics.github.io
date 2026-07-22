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
    max-width: 1050px;

    margin: 45px auto 70px;
    padding: 0 42px;

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

    padding: 12px;

    box-sizing: border-box;
  }

  .teaching-quote-card {
    position: relative;

    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;

    width: 100%;
    min-height: 320px;

    margin: 0;
    padding: 65px 75px 55px;

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
      0 16px 42px
      rgba(32, 49, 60, 0.1);

    text-align: center;
  }

  .teaching-quote-mark {
    position: absolute;
    top: 5px;
    left: 32px;

    font-family: Georgia, serif;
    font-size: 9rem;
    line-height: 1;

    color: var(--teaching-quote-accent);
    opacity: 0.12;

    pointer-events: none;
    user-select: none;
  }

  .teaching-quote-text {
    position: relative;
    z-index: 1;

    max-width: 820px;

    margin: 0;

    font-family: Georgia, serif;
    font-size: clamp(1.6rem, 3vw, 2.45rem);
    font-style: italic;
    line-height: 1.45;

    color: #263b49;

    text-wrap: balance;
  }

  .teaching-quote-author {
    position: relative;
    z-index: 1;

    margin-top: 30px;

    font-size: 1.05rem;
    font-weight: 600;
    letter-spacing: 0.05em;
    text-transform: uppercase;

    color: var(--teaching-quote-accent);
  }

  .teaching-quote-arrow {
    position: absolute;
    top: 50%;
    z-index: 5;

    display: grid;
    place-items: center;

    width: 48px;
    height: 48px;

    padding: 0;

    border:
      1px solid
      rgba(84, 127, 157, 0.22);

    border-radius: 50%;

    background: #ffffff;
    color: #263b49;

    box-shadow:
      0 10px 28px
      rgba(32, 49, 60, 0.14);

    font-size: 24px;
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
      0 13px 32px
      rgba(32, 49, 60, 0.2);

    transform:
      translateY(-50%)
      scale(1.08);
  }

  .teaching-quote-arrow.previous {
    left: 15px;
  }

  .teaching-quote-arrow.next {
    right: 15px;
  }

  .teaching-quotes-dots {
    display: flex;
    align-items: center;
    justify-content: center;

    gap: 10px;

    min-height: 22px;
    margin-top: 22px;
  }

  .teaching-quote-dot {
    display: block;

    width: 10px;
    height: 10px;

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
    width: 34px;
    opacity: 1;
  }

  .teaching-quote-dot:hover {
    opacity: 0.75;
    transform: scale(1.12);
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
      margin: 30px auto 55px;
      padding: 0 8px;
    }

    .teaching-quote-slide {
      padding: 8px;
    }

    .teaching-quote-card {
      min-height: 360px;
      padding: 60px 35px 45px;
    }

    .teaching-quote-mark {
      top: 12px;
      left: 22px;

      font-size: 7rem;
    }

    .teaching-quote-text {
      font-size: clamp(1.35rem, 6vw, 1.8rem);
    }

    .teaching-quote-arrow {
      width: 40px;
      height: 40px;

      font-size: 20px;
    }

    .teaching-quote-arrow.previous {
      left: 17px;
    }

    .teaching-quote-arrow.next {
      right: 17px;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .teaching-quotes-track {
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

            <footer class="teaching-quote-author">
              — {{ item.author }}
            </footer>
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

<div style="max-width: 800px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/marcosbb.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>
From an early age, Marcos understood that knowledge only truly matters when it is shared.

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

An opinion article by Marcos Matabuena exploring how universities can remain relevant in the age of artificial intelligence by fostering interdisciplinary collaboration and preserving their role as living communities of people, knowledge, and ideas.

<div style="max-width: 600px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/la-voz-ingles.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

<p>To read the original article, click <a href="https://www.lavozdegalicia.es/noticia/opinion/2025/06/01/oxford-leccion-manana-institucion-ves/0003_202506G1P18995.htm" target="_blank" rel="noopener noreferrer">here</a>.</p>