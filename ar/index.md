---
lang: ar
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
     الإحصاء الحيوي الرقمي
    </div>

    <p class="home-hero-quote">
      مهما كان الجبل شاهقًا، فهناك دائمًا طريق إلى القمة.

    </p>

    <p class="home-hero-text first">
      ما النظام الغذائي الأنسب لكل شخص؟ وهل يمكننا التنبؤ بالأمراض التي
      قد يُصاب بها شخص ما خلال العشرين عامًا القادمة—
      <span class="hero-highlight">والتدخل قبل ظهورها؟</span>
    </p>

    <p class="home-hero-text second">
      تتطلب الإجابة عن مثل هذه الأسئلة إطارًا علميًا جديدًا يجمع بين
      <span class="hero-highlight">الإحصاء الحيوي</span>،
      والذكاء الاصطناعي، والصحة الرقمية، واتخاذ القرارات السريرية.
    </p>



  </div>
</section>

## مرحبًا

مرحبًا بكم في الموقع الإلكتروني لمجموعة ماركوس ماتابوينا البحثية.

تمتلك الصحة الرقمية القدرة على تحديد مخاطر الإصابة بالأمراض قبل ظهور الأعراض السريرية بسنوات، بل وحتى بعقود. وتتمثل مهمتنا في تطوير الأساليب الرياضية والإحصائية وأساليب الذكاء الاصطناعي اللازمة لجعل هذا التحول ممكنًا، بالاعتماد على المعلومات المستمرة زمنيًا التي تُجمع عبر الأجهزة الطبية الحديثة. وفي نهاية المطاف، نهدف إلى تجاوز علاج الأمراض نحو التحسين المستمر والآني لصحة الأفراد والسكان.

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

## مستقبل الذكاء الاصطناعي في الطب

لا يزال الذكاء الاصطناعي في الطب في مراحله الأولى، ولم يُثبت في الممارسة السريرية الواقعية سوى جزء ضئيل من إمكاناته. وتعالج معظم التطبيقات الحالية مشكلات بسيطة نسبيًا ومحددة بوضوح من منظور التعلّم الإحصائي.

وخلال السنوات العشر إلى الخمس عشرة المقبلة، نتوقع أن نشهد تطورات يصعب تصورها اليوم، ولا سيما في الاضطرابات العصبية مثل التصلب الجانبي الضموري. وستظهر اكتشافات بيولوجية جديدة تضاهي التقدم الحديث في حل المسائل الرياضية المفتوحة باستخدام أدوات الذكاء الاصطناعي. ويتمثل الأفق التالي للبحث الطبي الحيوي في تطوير نماذج طولية وسببية وقائمة على البيانات، تستخدم أدوات الذكاء الاصطناعي لدعم العلاجات الثورية واكتشاف الأدوية. كما سيتاح لنا الوصول إلى ملفات تعريفية للأنماط الظاهرية الأيضية تتضمن معلومات بمستوى من التفصيل لم يسبق له مثيل.


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

## هدفنا الأسمى

يتمثل الهدف الأسمى لبحثنا في تطوير منظومة تشغيلية منخفضة التكلفة للرعاية الصحية، تهدف إلى تحسين صحة الأفراد والمجتمعات من خلال الجمع بين الإحصاء الحيوي، والصحة الرقمية، وبحوث العمليات.

منذ طفولتي، كان حلمي أن أساهم في إيجاد علاجات للأمراض. وسيسهم الذكاء الاصطناعي في اكتشاف أدوية مخصصة لكل فرد، وخفض تكاليف الرعاية الصحية، وتعزيز قدر أكبر من المساواة، ودعم وصف علاجات أكثر تخصيصًا.


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

## أبرز الإنجازات

{% capture text %}

نحن روّاد في استخدام الأساليب الإحصائية غير الإقليدية لتطوير جيل جديد من المؤشرات الحيوية الرقمية. وقد أسهم عملنا في تقديم مفهوم «كثافة الغلوكوز»، وهو مؤشر حيوي شامل صُمم لتلخيص بيانات الصحة الرقمية التي تُجمع في ظروف الحياة اليومية. كما نطوّر تقنيات حديثة في تعلّم الآلة وأساليب مبتكرة لقياس عدم اليقين في البيانات المعقدة وعالية الأبعاد، مما يتيح لنا الاستفادة الكاملة من المعلومات الغنية والكثيفة والطولية التي تولدها تقنيات الصحة الرقمية.


{%
  include button.html
  link="research"
  text="اطّلع على منشوراتنا"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/OurResearch.png"
  link="research"
  title="أبحاثنا"
  text=text
%}

{% capture text %}

تركّز مشاريعنا الحالية على تطوير جيل جديد من أساليب الذكاء الاصطناعي الإحصائي القادرة على تحويل الكميات الهائلة من المعلومات التي تجمعها الأجهزة الرقمية إلى معرفة ذات معنى سريري. ونهدف، من خلال مشكلات طبية واقعية، إلى إظهار كيف يمكن لهذه الأساليب أن تحقق تقدمًا ملموسًا في البحث والممارسة السريرية.


{%
  include button.html
  link="projects"
  text="تصفّح مشاريعنا"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/ourprojects_web.png"
  link="projects"
  title="مشاريعنا"
  flip=true
  style="bare"
  text=text
%}

{% capture text %}

يعتمد نجاح البحث على الاختيار الدقيق لأعضاء فريقك والمتعاونين معك. وللمساهمة في دفع المجال إلى الأمام، أحط نفسك بأشخاص متحمسين، ومحفَّزين، ومؤهلين تأهيلًا جيدًا.

{%
  include button.html
  link="team"
  text="تعرّف على فريقنا"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/collageconsolo1pelado.png"
  link="team"
  title="فريقنا"
  text=text
%}

## شهادات وآراء

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
              ماركوس متعاون يتمتع بذكاء لافت وحماس كبير، ويواكب الأدبيات العلمية عن كثب، كما يتميز بسرعة الربط بين الأفكار عبر مشكلات مختلفة. فهو سريع التفكير، ويتفاعل بصورة مباشرة، ويُظهر التزامًا حقيقيًا بالعمل القائم على أسس إحصائية رصينة والمرتبط بأسئلة طبية حيوية واقعية وذات أهمية.

              وإلى جانب الجانب البحثي، كان صديقًا رائعًا ومصدرًا حقيقيًا للدعم في مسيرتي العلمية. وأنا واثق من أنه سيحقق إنجازات عظيمة، وأتطلع إلى مواصلة عملنا معًا عند نقطة التقاء المنهجيات الإحصائية والصحة الرقمية!

            </p>

            <p class="testimonial-name">Yating Zou</p>

            <p class="testimonial-role">
              طالب دكتوراه في الإحصاء الحيوي بجامعة كارولينا الشمالية في تشابل هيل
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
              كان ماركوس مشرفًا رائعًا، وبصراحة، أحد أكثر الأشخاص تأثيرًا بصورة إيجابية في مسيرتي الأكاديمية حتى الآن. فهو مجتهد للغاية وشخص أكنّ له قدرًا كبيرًا من الاحترام والتقدير. لقد فتح عينيّ على فرص لم أكن قد فكرت فيها من قبل، وشجّعني على أن أكون أكثر طموحًا في أبحاثي وفي مسيرتي الأكاديمية على حد سواء. وقد جعلني وجوده مرشدًا لي باحثةً أفضل بكثير، وأشعر بامتنان كبير لكوني جزءًا من مختبره البحثي.
            </p>

            <p class="testimonial-name">Cristina Correa</p>

            <p class="testimonial-role">
              طالبة ماجستير في علم الأحياء الحاسوبي بجامعة محمد بن زايد للذكاء الاصطناعي
            </p>
          </div>
        </div>
      </article>

      <article class="testimonial-slide">
        <div class="testimonial-card">
          <div class="testimonial-photo-wrapper">
            <img
              class="testimonial-photo"
              src="{{ '/images/rounakdey.jpg' | relative_url }}"
              alt="Portrait of Rounak Dey"
            >
          </div>

          <div class="testimonial-content">
            <p class="testimonial-text">
              ماركوس باحث لامع يجلب إلى كل مشروع قدرًا استثنائيًا من الدقة والتفاني والابتكار. كما يتميز بقدرته على بناء علاقات تعاون مثمرة، ويحافظ على معايير عالية جدًا في منشوراته العلمية. لقد كان من دواعي سروري العمل إلى جانبه، وأتمنى له دوام النجاح طوال مسيرته المهنية الواعدة.
            </p>

            <p class="testimonial-name">Rounak Dey</p>

            <p class="testimonial-role">
              عالِم بيانات رئيسي في شركة Insitro
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
              في عالم العلوم شديد التنافسية، يتميّز ماركوس بنهجه الإنساني. فهو يضع العلاقات الشخصية في المقام الأول، ويتجلى ذلك في الاهتمام الاستثنائي الذي يوليه للأشخاص العديدين ضمن شبكة المتعاونين معه. أعرفه منذ عدة سنوات، وخلال الأشهر الثمانية عشر الماضية شاركنا في تأليف ورقتين بحثيتين، حصلت إحداهما على جائزة، وهي تجربة لم تزدني إلا إعجابًا بتفانيه وروحه التعاونية.

              يعمل ماركوس بلا كلل لتحقيق هدف طموح وهادف يتجاوز الرياضيات بكثير، وهو إحداث أثر إيجابي في المجتمع من خلال الأساليب الإحصائية وأساليب الذكاء الاصطناعي التي يطورها في مجال الصحة الرقمية. إنه باحث لامع ومتعاون يمكنك الاعتماد عليه دائمًا.

            </p>

            <p class="testimonial-name">Antonio Álvarez</p>

            <p class="testimonial-role">
             باحث ما بعد الدكتوراه في جامعة نانيانغ التكنولوجية
            </p>
          </div>
        </div>
      </article>

      <article class="testimonial-slide">
        <div class="testimonial-card">
          <div class="testimonial-photo-wrapper">
            <img
              class="testimonial-photo"
              src="{{ '/images/elvis.jpg' | relative_url }}"
              alt="Portrait of Elvis Han Cui"
            >
          </div>

          <div class="testimonial-content">
            <p class="testimonial-text">
              إن «الإحصاء الحيوي الرقمي» ليس مجرد موقع إلكتروني، بل هو راية مرفوعة على تخوم علوم الطب الحيوي.

              في هذه الرؤية، لم تعد الصحة رقمًا جامدًا يُسجَّل خلال زيارة إلى العيادة، بل أصبحت إشارة حيّة: مستمرة، وقابلة للرصد عبر الأجهزة القابلة للارتداء، وطولية، ومحاطة بعدم اليقين، وإنسانية في جوهرها.

              يرفض عمل ماركوس ماتابوينا المفاضلة الزائفة بين الصرامة الرياضية والخيال السريري. إذ يجمع بين تحليل البيانات الدالية، والاستدلال السببي، وقياس عدم اليقين، والمؤشرات الحيوية الرقمية، والذكاء الاصطناعي، بوصفها أدوات لقراءة نبض المستقبل.

              وكما يقول المثل الصيني: «观水有术，必观其澜» — لفهم النهر، لا بد من تأمل أمواجه.

              ولمن يرغب في معرفة الوجهة التي يمضي إليها علم الإحصاء الحيوي، فهذا مكان جدير بالمتابعة.

            </p>

            <p class="testimonial-name">Elvis Han Cui</p>

            <p class="testimonial-role">
              طالب دكتوراه في الإحصاء الحيوي بكلية فيلدينغ للصحة العامة في جامعة كاليفورنيا، لوس أنجلوس
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

    <button
      class="testimonial-dot"
      type="button"
      data-slide="2"
      aria-label="Show testimonial 3"
    ></button>

    <button
      class="testimonial-dot"
      type="button"
      data-slide="3"
      aria-label="Show testimonial 4"
    ></button>

    <button
      class="testimonial-dot"
      type="button"
      data-slide="4"
      aria-label="Show testimonial 5"
    ></button>
  </div>
</div>
<script src="{{ '/assets/js/testimonials.js' | relative_url }}" defer></script>
