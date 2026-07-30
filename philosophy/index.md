---
title: Philosophy
lang: en
translation_key: philosophy
description: 
nav:
  order: 4
  tooltip: Explore our vision
---

# Philosophy

Our philosophy is grounded in intellectual courage, perseverance, loyalty, fairness, independent thought, and the responsibility to transform knowledge into meaningful action.
The following twelve principles reflect the values that guide how we conduct research, choose problems, support one another, and pursue long-term scientific impact.

<div style="max-width: 600px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/skyopeningGOOD.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>
{% include section.html %}

## Why We Work in Medicine

Our interest in medicine did not begin with an abstract methodological question. It began with a desire to understand the human body, the pain and frustration caused by sports injuries, and the possibility of using quantitative knowledge to improve people’s lives.

At the age of fifteen, while competing in athletics, Marcos Matabuena became fascinated by how training, fatigue, physiology, and individual variability shape human performance. At around the same time, a serious sports injury prevented him from continuing the activity he loved for nearly two years. The experience led him to think more deeply about injury, recovery, and human movement, and to explore these questions from a biomechanical and quantitative perspective.

This curiosity eventually led him to study Mathematics. During his early academic training, he developed methods for estimating maximal oxygen uptake, modelling the relationship between training and fatigue, and identifying physiological thresholds through heart-rate variability. These projects were motivated not only by athletic performance, but also by a broader question: how can data help us understand what is happening inside the human body?

That work revealed a wider scientific opportunity. Data collected continuously from the body can capture patterns that conventional clinical measurements often miss. They can help us understand individual physiology, monitor changes over time, prevent injuries, and design more personalized approaches to health and physical activity. Long before digital health became an established research field, this idea began to shape a scientific path connecting mathematics, statistics, physiology, and medicine.

Over time, the questions became increasingly clinical. How can continuous glucose-monitoring data improve our understanding of metabolic health? How can digital biomarkers help predict disease onset and progression? How should uncertainty be quantified when medical outcomes are curves, distributions, images, networks, or other complex non-Euclidean objects? And how can these methodological advances support better prevention, diagnosis, treatment, and healthcare decision-making?

Digital Biostatistics emerged from this journey. It reflects the conviction that mathematical innovation has its greatest value when it is used to address meaningful biomedical problems arising from the continuous, high-frequency, and multimodal data now collected about human health and behaviour.

Behind every digital signal is a person. Behind every statistical prediction is a decision. And behind every methodological contribution should be the possibility of improving human health.


{% include section.html %}

## Foundational Papers in Sport, Movement, and Mathematical Physiology

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

  .highlighted-paper-title a {
    color: inherit;
    text-decoration: none;
  }

  .highlighted-paper-title a:hover {
    text-decoration: underline;
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
  aria-label="Foundational sport and physiology publications"
  aria-roledescription="carousel"
>
  <div class="highlighted-papers-viewport">
    <div class="highlighted-papers-track">

      {% for paper in site.data.philosophy_highlighted %}
        <article
          class="highlighted-paper-slide"
          aria-hidden="{% if forloop.first %}false{% else %}true{% endif %}"
        >
          <div class="highlighted-paper-card">

            <div class="highlighted-paper-image">
              <img
                src="{{ paper.image | relative_url }}"
                alt="Summary card for {{ paper.title | escape }}"
                loading="{% if forloop.first %}eager{% else %}lazy{% endif %}"
                decoding="async"
              >
            </div>

            <div class="highlighted-paper-information">
              <h3 class="highlighted-paper-title">
                <a
                  href="{{ paper.link }}"
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  {{ paper.title }}
                </a>
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
    {% for paper in site.data.philosophy_highlighted %}
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

These three papers reflect the origin of a research philosophy built around sport, physiology, and the idea that mathematical models should remain close to real human signals. They connect early questions about aerobic capacity, movement, training load, and physical adaptation with the broader digital-health vision of the group.

## Our Twelve Principles

### 1. Deserving Success

> “Success is easy to achieve; the difficult part is deserving it.”

— **Albert Camus**

### 2. Leadership Through Care

> “Treat your soldiers as you would a newborn child, and they will be willing to follow you into the deepest valleys. Care for them as you would your own beloved children, and they will gladly die by your side.”

— **Sun Tzu**

### 3. Choosing Meaningful Problems

> “Choosing a worthwhile PhD research problem is like choosing a good bride for your son.”

— **Vladimir Arnold**

### 4. The Courage to Act

> “To recognise what is right and fail to act upon it is cowardice.”

— **Confucius**

### 5. The Value of an Idea

> “A poor person’s advice, however sound it may be, is never accepted.”

— **Miguel de Cervantes**

### 6. Knowledge From Within

> “Only the knowledge that comes from within is true knowledge.”

— **Socrates**

### 7. Lifelong Perseverance

> “There are those who fight for a day, and they are good. There are others who fight for a year, and they are better. Some fight for many years, and they are very good. But there are those who fight throughout their entire lives: they are the indispensable ones.”

— **Bertolt Brecht**

### 8. Remaining in Love With the Work

> “One should always be in love. That is why one should never marry.”

— **Oscar Wilde**

### 9. Finding a Way

> “Those who want to do something find a way; those who do not find an excuse.”

— **Arab proverb**

### 10. Working in Obscurity

> “Whoever studies for ten years in obscurity will eventually become universally known.”

— **Chinese proverb**

### 11. The Courage of New Ideas

> “A man with new ideas is considered mad until his ideas succeed.”

— **Mark Twain**

### 12. Choices Define Us

> “It is not our abilities that show who we truly are, but our choices.”

— **J. K. Rowling**

{% include section.html %}

## The Mentorship Behind Our Scientific Ambition
Five years ago, one of my most important mentors—and perhaps the person who has had the greatest influence on my life, aside from my mother and my high school teacher—told me, “Marcos, if you truly focus, you have the potential to become one of the best in the world.”

Three years later, he shared another piece of advice that has stayed with me ever since: “Many statisticians take pride in the impact of their work, yet their contributions remain largely unknown within the biomedical community. You have a gift. You must develop models that truly matter.” 

Four months ago, he reminded me once again that, if I remain focused, the sky is the limit. 

His words have profoundly shaped my scientific ambitions, my approach to mentorship, and the way I support my team. Our central goal is to build upon the glucodensity framework and related statistical methodologies to help drive transformative advances in diabetes research and personalized nutrition. We seek to develop methods that are not only mathematically innovative, but also capable of changing how diseases are understood, monitored, prevented, and treated.

{% include section.html %}
## Manifests that Inspire Us

### A Personal Journey Through Biostatistics, Artificial Intelligence, and Change

In this personal essay, Marcos Matabuena reflects on his scientific journey, the influence of sport and triathlon, the importance of interdisciplinary thinking, and the lessons he learned from mentors, collaborators, and major figures in science. 

<a href="https://www.digitalbiostatistics.com/2025/01/my-thoughts-on-future-of-biostatistics.html" target="_blank" rel="noopener noreferrer">
  Read “My Thoughts on the Future of Biostatistics in the Era of Artificial Intelligence”
</a>

### Biostatistics, Artificial Intelligence, and the Purpose of Scientific Work

This reflection considers the role of biostatistics in the age of artificial intelligence through the story and ideas of Yinchao. 

<a href="https://www.digitalbiostatistics.com/2025/12/biostatistics-in-age-of-artificial.html" target="_blank" rel="noopener noreferrer">
  Read “Biostatistics in the Age of Artificial Intelligence”
</a>

### A Practical Guide to Research (in Chinese)

Jianqiao Wang’s (Tsinghua University) guide offers reflections on doctoral training, scientific communication, intellectual openness, asking meaningful questions, developing data intuition, and learning from colleagues rather than viewing them as competitors. 

<a href="https://www.jianqiao.me/post/guide-to-research/" target="_blank" rel="noopener noreferrer">
  Read “A Hitchhiker’s Guide to Research”
</a>

{% include section.html %}

## Sport, Resilience, and the Long-Distance Mindset

We see scientific life as a marathon—or, more broadly, as an endurance sport. Meaningful research requires patience, discipline, repetition, resilience, and the ability to continue when progress is slow or uncertain. Athletes rarely succeed because of a single extraordinary moment. Their achievements are built through years of training. 

Rafael Nadal and his coach, Toni Nadal, represent this philosophy particularly well.

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

### Rafael Nadal and Toni Nadal

<div class="dual-videos" markdown="0">
  <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/79fcTRwAnw8?start=7"
      title="Rafael Nadal"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>

  <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/7dpqMtzEhBs"
      title="Toni Nadal on effort and talent"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>
</div>

{% include section.html %}

## Legendary and Inspirational Moments in Spanish Sports History

<div class="dual-videos" markdown="0">
  <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/jm04y-F5UXM"
      title="Spanish athlete inspiration 1"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>

  <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/eA4hwNA7MJg"
      title="Spanish athlete inspiration 4"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>

  <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/szLGtG_yQzo"
      title="Spanish athlete inspiration 2"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>

  <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/ys0KdeZHtq0"
      title="Spanish athlete inspiration 3"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>
    <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/D0-Z80q4e8A?si=cbw_Apbb-iRDx56R"
      title="Spanish athlete inspiration 4"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>

  <div class="dual-video">
    <iframe
      src="https://www.youtube.com/embed/xMewaufqszQ?si=ewo-rHgzkLVQtDLs" 
      title="Spanish athlete inspiration 5"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      referrerpolicy="strict-origin-when-cross-origin"
      allowfullscreen>
    </iframe>
  </div>
</div>