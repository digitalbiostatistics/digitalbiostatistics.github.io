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
  .two-videos-row {
  max-width: 1100px;
  margin: 40px auto 10px auto;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 25px;
  align-items: center;
}

.video-box {
  width: 100%;
  aspect-ratio: 16 / 9;
}

.video-box iframe {
  width: 100%;
  height: 100%;
  display: block;
  border: 0;
  border-radius: 4px;
}

@media (max-width: 750px) {
  .two-videos-row {
    grid-template-columns: 1fr;
  }
}
  .image-video-row {
  max-width: 1100px;
  margin: 40px auto 10px auto;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 25px;
  align-items: center;
}

.image-video-item {
  width: 100%;
}

.image-video-item img {
  width: 100%;
  display: block;
  border-radius: 4px;
}

.video-wrapper {
  aspect-ratio: 16 / 9;
}

.video-wrapper iframe {
  width: 100%;
  height: 100%;
  display: block;
  border: 0;
  border-radius: 4px;
}

/* En móvil se colocan uno debajo del otro */
@media (max-width: 750px) {
  .image-video-row {
    grid-template-columns: 1fr;
  }
}
  .teaching-quotes-slider {
    --teaching-quote-accent: #547f9d;

    position: relative;
    width: 100%;
    max-width: 760px;

    margin: 25px auto 45px;
    padding: 0 30px;

    box-sizing: border-box;
  }

  .single-video {
    width: 100%;
    max-width: 500px;
    margin: 40px auto 10px auto;
    aspect-ratio: 16 / 9;
  }

  .single-video iframe {
    width: 100%;
    height: 100%;
    display: block;
    border: 0;
    border-radius: 4px;
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

## The University, Medicine, and Digital Biostatistics in the Age of Artificial Intelligence


Higher education institutions emerged centuries ago as centers for preserving, organizing, and transmitting knowledge. For centuries, their authority rested on the interpretation of established texts, traditions, and bodies of knowledge. The arrival of the printing press gradually transformed this model by expanding access to ideas, while the Scientific Revolution and the critical thinking of the Enlightenment, represented by authors such as David Hume, broadened the boundaries of intellectual freedom and challenged absolute dependence on authority.


During the nineteenth and twentieth centuries, the modern research university emerged, initially in Europe and later with extraordinary strength in the United States. The mission of the university was no longer limited to transmitting accumulated knowledge; it also began to include the systematic production of new discoveries. Laboratories, doctoral programs, scientific journals, and collaborations among universities, governments, and industry turned higher education into one of the principal engines of the scientific, medical, and technological revolutions that shaped modern society.


In the age of artificial intelligence, the university will need to reinvent itself once again if it wishes to remain relevant. Many professors regard the incorporation of these technologies into education with concern. Yet artificial intelligence is not destroying a fully effective system. It is making the limitations of an educational model designed during an era of information scarcity increasingly visible. Too often, this model continues to prioritize memorization, uniformity, and hierarchy over creativity, collaboration, individual talent, and the search for solutions to society’s most important problems.


Educators such as Ken Robinson argued that children are naturally curious, imaginative, and willing to experiment, but that conventional educational systems can gradually weaken these qualities by penalizing mistakes, rewarding conformity, and prioritizing standardized forms of achievement. In his view, creativity is not a rare talent possessed by a small minority, but a fundamental human capacity that education should identify and cultivate. With the arrival of artificial intelligence, this criticism has acquired renewed relevance.

<div class="image-video-row">

  <!-- Imagen izquierda -->
  <div class="image-video-item">
    <img
      src="{{ '/images/marcosbb.png' | relative_url }}"
      alt="Marcos"
    >
  </div>

  <!-- Vídeo derecha -->
  <div class="image-video-item video-wrapper">
    <iframe
      src="https://www.youtube.com/embed/iG9CE55wbtY?si=XiBwjeYgg20yBMBu"
      title="YouTube video"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      allowfullscreen>
    </iframe>
  </div>

</div>

These technologies can extend individual capabilities, personalize learning, and allow people anywhere in the world to access knowledge, tools, and opportunities that were once available only to a minority. They may also help students explore ideas at their own pace, receive individualized support, and develop talents that do not fit easily within traditional educational structures. However, this potential will be realized only if inequalities in access are reduced and people are taught to use artificial intelligence critically, rigorously, responsibly, and with a clear awareness of its limitations.

<div class="single-video">
  <iframe
    src="https://www.youtube.com/embed/hJP5GqnTrNo?si=6rybGNFYlLZzuxPs"
    title="YouTube video"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
    allowfullscreen>
  </iframe>
</div>

Education will change profoundly throughout the world. Its mission can no longer be limited to transmitting content that can now be retrieved almost instantly. It must teach people to formulate important questions, evaluate evidence critically, distinguish information from knowledge, integrate disciplines, reason under uncertainty, and use artificial intelligence with creativity and responsibility. The value of the university will not lie solely in providing information, but in building communities capable of interpreting knowledge, questioning it, producing new ideas, and using them to transform reality.


This evolution will be especially important in biomedicine. Artificial intelligence can already analyze enormous volumes of information, identify complex patterns, and support scientific research and clinical decision-making. However, increasingly powerful predictive systems will not, by themselves, solve the major problems of medicine. We must also decide which questions should be asked, which data should be collected, which outcomes are clinically meaningful, and how predictions should be translated into safe and effective decisions for patients and populations.


Medical education must evolve in two complementary directions. On the one hand, it will need to incorporate statistics, artificial intelligence, data science, study design, causal inference, uncertainty quantification, and other quantitative methods more deeply into the curriculum. These foundations will be essential for understanding contemporary medicine. On the other hand, medical education must place even greater emphasis on communication, empathy, ethics, attentive listening, and human care. The more powerful technology becomes, the more important it will be to remember that medicine is not merely about predicting disease, but also about understanding, accompanying, and caring for people.


In biomedicine, this new form of education will require a discipline capable of connecting artificial intelligence, statistics, study design, uncertainty quantification, clinical knowledge, and decision-making. This integration lies at the heart of what we understand as <strong> Digital Biostatistics </strong>.


We must therefore distinguish clearly between the decisions that should remain under human responsibility and the tasks that may be entrusted to artificial intelligence systems. Such delegation will be legitimate only when we retain a sufficient understanding of how the algorithms work, what information they use, which assumptions they rely on, where their limitations lie, and what consequences their errors may produce. It is not enough for a system to generate an apparently accurate prediction. We must also be able to assess its reliability, its uncertainty, its potential biases, and its ability to generalize across different individuals, hospitals, and clinical settings.


Ethical regulation will be indispensable, but it will not be sufficient. General principles, legal frameworks, and administrative standards must be accompanied by a mathematical, statistical, and clinical understanding of the systems being used. We cannot responsibly govern a technology that we do not understand. Human oversight should not consist merely of accepting or rejecting an algorithmic recommendation. It should involve understanding the evidence that supports it, recognizing when the system may fail, and identifying when a decision requires clinical experience, contextual interpretation, or direct dialogue with the patient.


This transformation will require new university curricula and the continuous education of thousands of professionals already working in medicine, research, public administration, and industry. Educating a new generation of students will not be enough. We will also need to update the knowledge of those who currently make decisions and create teams capable of integrating clinical experience, mathematics, statistics, computer science, the social sciences, and knowledge of healthcare systems.

<div class="two-videos-row">

  <!-- Vídeo de la izquierda -->
  <div class="video-box">
    <iframe
      src="https://www.youtube.com/embed/J7o2WJX_xQE?si=rvcJTCDceENQ7Kfo"
      title="Video left"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      allowfullscreen>
    </iframe>
  </div>

  <!-- Vídeo de la derecha -->
  <div class="video-box">
    <iframe
      src="https://www.youtube.com/embed/hsPHO64P3QU?si=EjMb0XoSmnqlEqNE"
      title="Video right"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      allowfullscreen>
    </iframe>
  </div>

</div>


In this context, biostatistics must assume a broader role. It can no longer be limited to the retrospective analysis of clinical studies or conventional databases. It must contribute to the design, analysis, statistical inference, and clinical translation of continuous, longitudinal, multimodal data generated by digital technologies. It must also connect with artificial intelligence and operations research to transform predictions into medical decisions that are reliable, transparent, and genuinely useful.


Artificial intelligence should not diminish the importance of the university, medicine, or the human being. It should compel us to redefine them and orient them toward something genuinely useful, creative, and transformative. Its greatest contribution will not be to think in our place, but to allow us to dedicate more time to what remains profoundly human: formulating questions, exercising judgment, understanding others, speaking with patients, collaborating across disciplines, and deciding what kind of future we want to build. Above all, it should help us identify, develop, and empower human talent wherever it may be found.



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

**AI evolution in Medicine in the future**

In this interview, conducted more than a year ago, Marcos Matabuena predicted that, despite the rapid advance of artificial intelligence, medicine would evolve toward a more human-centered culture.

<p>To read the original article, click <a href="https://www.lavozdegalicia.es/noticia/lavozdelasalud/enfermedades/2025/04/03/marcos-matabuena-investigador-gallego-harvard-bill-gates-acaba-predecir-diez-anos-medicos-tendran-rol-bastante-diferente-actual/00031743692850087318685.htm" target="_blank" rel="noopener noreferrer">here</a>.</p>
<div style="max-width: 600px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/lavozdegalicia2.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

## Universal Literature for the Age of Artificial Intelligence and Beyond

<div style="max-width: 800px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/finalteaching.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>