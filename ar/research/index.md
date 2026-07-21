---
title:  الأبحاث
lang: ar
translation_key: research
nav:
  order: 1
  tooltip: الأعمال المنشورة
---

# الأبحاث

## المستقبل المتواصل

تخيّل شخصًا يتعرض لمتلازمة تاجية حادة وهو بمفرده في المنزل، ويرتدي جهازًا يراقب علاماته الحيوية باستمرار. وعندما يكتشف الجهاز تغيرات خطيرة — مثل تخطيط غير طبيعي لكهربائية القلب أو انخفاض مستويات الأكسجين — فإنه يفعّل تلقائيًا استجابة طارئة. وخلال ثوانٍ، يحدد النظام أقرب سيارة إسعاف متاحة ويرسلها، مع التكيف في الوقت الفعلي مع عوامل مثل حالة حركة المرور وقدرة المستشفيات الاستيعابية.

وأثناء الطريق، يواصل الجهاز إرسال البيانات الحيوية للمريض، مما يتيح إجراء تعديلات ديناميكية على القرارات <strong>الطبية</strong> واللوجستية. وإذا ساءت حالة المريض، يُخطر المستشفى للاستعداد وتجهيز وحدة للعناية الحرجة. وعند وصول المريض، تدعم النماذج التنبؤية عملية اتخاذ القرار، بما يضمن أفضل نتيجة ممكنة مع تعظيم كفاءة استخدام موارد الرعاية الصحية.

<div style="max-width: 600px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/ambulance.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>

{% include section.html %}

## رسالتنا ورؤيتنا

يتمثل هدفنا طويل المدى في بناء إطار لاتخاذ القرارات في مجال الرعاية الصحية، يدعم اتخاذ قرارات سريرية وصحية عامة أفضل على مستوى الأفراد والسكان، من خلال الجمع بين الإحصاء الحيوي، وتقنيات الصحة الرقمية، وبحوث العمليات.

نعمل حاليًا على تطوير أساليب إحصائية وأساليب للذكاء الاصطناعي لمعالجة مشكلات سريرية معقدة تتضمن بيانات صحية مستمرة، وعالية التواتر، وآنية. ونريد لهذه الأساليب ألا تقتصر على الإجابة عن الأسئلة الطبية القائمة، بل أن تساعد أيضًا في تحديد الأسئلة الأكثر أهمية. ما النظام الغذائي الأنسب لشخص معين؟ وما مقدار النشاط البدني الذي يحتاج إليه لدعم الشيخوخة الصحية وطول العمر؟ وكيف ينبغي أن تتغير هذه التوصيات وفقًا للملف السريري للفرد، وخصائصه البيولوجية، وبيئته، ونمط حياته؟

ولمعالجة هذه الأسئلة، يجمع بحثنا بين الاستدلال السببي، وتحليل البقاء، والاستدلال المطابقي وقياس عدم اليقين، ونماذج التأثيرات العشوائية والنماذج متعددة المستويات، والذكاء الاصطناعي التوليدي، والنمذجة المكانية والزمانية، وتحليل البيانات الدالية، والتعلّم الإحصائي للبيانات غير الإقليدية وغيرها من هياكل البيانات المعقدة. ويُعد التصميم الدقيق للدراسات وقابلية التوسع الحاسوبي عنصرين أساسيين في هذه الرؤية. ويتمثل هدفنا في تطوير أساليب صارمة رياضيًا، وفعّالة حاسوبيًا، وعملية بما يكفي لاستخدامها مع موارد طبية حيوية واسعة النطاق، مثل البنك الحيوي البريطاني، وبرنامج All of Us للأبحاث، ومشروع النمط الظاهري البشري، وبرنامج NHANES.

وعلى الرغم من أن العديد من الأساليب المنشورة في أبرز دوريات الإحصاء وتعلّم الآلة سليمة من الناحية التقنية، فإنها لا تُصمم دائمًا مع مراعاة تعقيدات البيانات السريرية الواقعية. لذلك، ينطلق بحثنا من أسئلة طبية حيوية محددة وتحديات عملية. ونطوّر أساليب تراعي بنية البيانات، وواقع الممارسة السريرية، والقرارات التي يحتاج الأطباء والمرضى وأنظمة الرعاية الصحية إلى اتخاذها.

## أبحاث مختارة


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

{% assign highlighted_papers = "Glucodensity functional profiles outperform traditional continuous glucose monitoring metrics||Multilevel functional distributional models with applications to continuous glucose monitoring in diabetes clinical trials||Conformal and kNN Predictive Uncertainty Quantification Algorithms in Metric Spaces||Denoising Data with Measurement Error Using a Reproducing Kernel-based Diffusion Model||Distributional Random Forests for Complex Survey Designs on Reproducing Kernel Hilbert Spaces||Random-Effects Algorithm for Random Objects in Metric Spaces" | split: "||" %}

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

## الكل

{% include search-box.html %}
{% include search-info.html %}

{% include list.html data="citations" component="citation" style="rich" %}