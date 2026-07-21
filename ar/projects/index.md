---
title: المشاريع
lang: ar
translation_key: projects
nav:
  order: 2
  tooltip: البرمجيات، ومجموعات البيانات، والمزيد
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
    margin: 30px 0 45px;
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
 .card-text p {
    text-align: left !important;
    word-spacing: normal !important;
    letter-spacing: normal !important;
    hyphens: auto;
  }
</style>

<div class="projects-page" markdown="1">

# المشاريع

<div class="projects-intro">

<p class="projects-lead">
تسعى مشاريعنا إلى إرساء الأسس المنهجية الصارمة للإحصاء الحيوي الرقمي، وإثبات قيمتها العملية في البحوث الطبية الحيوية، والممارسة السريرية، وصحة السكان.
</p>  
<p class="projects-lead">
نعرّف <strong>الإحصاء الحيوي الرقمي</strong> بأنه فرع من فروع الإحصاء الحيوي يُعنى بتصميم وتحليل والاستدلال الإحصائي والترجمة السريرية للبيانات الصحية المستمرة الجمع، وعالية التواتر، والطولية، ومتعددة الوسائط، التي تولّدها التقنيات الرقمية، وذلك بهدف نهائي يتمثل في دعم اتخاذ القرارات السريرية وقرارات الرعاية الصحية من خلال دمج الإحصاء الحيوي مع بحوث العمليات.
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

تشكّلت هذه الرؤية من خلال تجارب تأسيسية، وإرشاد أكاديمي، وتعاونات في جامعة هارفارد، وجامعة جونز هوبكنز، وجامعة كارولينا الشمالية في تشابل هيل، ولا سيما في مجالات التنميط الظاهري الرقمي، وتحليل البيانات الدالية، والطب الشخصي، والبيانات الصحية الطولية.

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

## فلسفة البحث

قبل خمس سنوات، قال لي أحد أهم مرشديّ — وربما الشخص الذي كان له التأثير الأكبر في حياتي بعد والدتي ومعلمي في المرحلة الثانوية —: «ماركوس، إذا ركزت حقًا، فلديك القدرة على أن تصبح واحدًا من الأفضل في العالم».

وبعد ثلاث سنوات، شاركني نصيحة أخرى ظلت راسخة في ذهني منذ ذلك الحين: «يفتخر كثير من الإحصائيين بأثر أعمالهم، ومع ذلك تظل إسهاماتهم غير معروفة إلى حد كبير داخل مجتمع الطب الحيوي. لديك موهبة، وعليك أن تطوّر نماذج تُحدث فرقًا حقيقيًا».

وقبل أربعة أشهر، ذكّرني مرة أخرى بأن السماء هي الحد، ما دمت محافظًا على تركيزي.

لقد أسهمت كلماته بعمق في تشكيل طموحاتي العلمية، ونهجي في الإرشاد، والطريقة التي أدعم بها فريقي. ويتمثل هدفنا الأساسي في البناء على إطار كثافة الغلوكوز والمنهجيات الإحصائية المرتبطة به، للمساهمة في دفع تطورات تحويلية في أبحاث السكري والتغذية الشخصية. ونسعى إلى تطوير أساليب لا تقتصر على الابتكار الرياضي فحسب، بل تكون قادرة أيضًا على تغيير الطريقة التي نفهم بها الأمراض ونراقبها ونقي منها ونعالجها.

## أسئلة مفتوحة نعمل على حلها

يتمحور بحثنا حول مجموعة من الأسئلة المنهجية والتطبيقية والسريرية المفتوحة. وتوجّه هذه الأسئلة تطوير نظريات إحصائية جديدة، مع ضمان أن تعالج الأساليب الناتجة مشكلات ذات أهمية جوهرية في الطب والصحة العامة.


Aquí tienes toda la sección traducida, manteniendo intacto lo que aparece dentro de `<>` y `{}`:

<div class="question-grid">

  <article class="question-card">


<h4>قيم E لاختبار الفرضيات المتعددة عالية الأبعاد</h4>

<p>
  كيف يمكن تطوير قيم E ضمن إطار عام لاختبار عدد كبير من
  الفرضيات المتعددة في دراسات الصحة الرقمية عالية الأبعاد؟
</p>


  </article>

  <article class="question-card">


<h4>الاستدلال التنبؤي الشرطي للأجسام العشوائية</h4>

<p>
  كيف يمكننا بناء مناطق تنبؤية للأجسام العشوائية في
  الفضاءات المترية، مع ضمانات قوية — ومثلى حيثما أمكن —
  للتغطية الشرطية، من دون فرض افتراضات تقييدية
  تتعلق بالتنعيم؟
</p>


  </article>

  <article class="question-card">


<h4>التنبؤ المطابقي الأمثل لنماذج التأثيرات العشوائية</h4>

<p>
  كيف يمكن توسيع نطاق التنبؤ المطابقي ليشمل النماذج متعددة المستويات
  ونماذج التأثيرات العشوائية، مع الحفاظ على ضمانات ذات معنى
  للتغطية الشرطية؟
</p>


  </article>

  <article class="question-card">


<h4>التعلّم العميق من دون افتراضات عن المتشعبات</h4>

<p>
  ما الضمانات النظرية التي يمكن إثباتها لخوارزميات التعلّم العميق
  التي تعمل على فضاءات عامة غير إقليدية، من دون افتراض
  أن المشاهدات تقع على متشعب أملس،
  ولا سيما في تطبيقات الصحة الرقمية؟
</p>


  </article>

  <article class="question-card question-card-wide">


<h4>الأسس الرياضية لتحليل البيانات التوزيعية</h4>

<p>
  ما الأسس الرياضية والإحصائية اللازمة لترسيخ
  تحليل البيانات التوزيعية بوصفه إطارًا صارمًا،
  وقابلًا للتفسير، وواسع النطاق في مجال الصحة الرقمية؟
</p>


  </article>

</div>

## الأسئلة التطبيقية والسريرية

إلى جانب هذه التحديات المنهجية، نبحث في أسئلة تطبيقية
رئيسية يمكن من خلالها للأساليب الإحصائية المتقدمة
أن تحقق قيمة سريرية وطبية حيوية ملموسة.

<div class="question-grid">

  <article class="question-card">


<h4>الاكتشافات الجينية باستخدام الأنماط الظاهرية الرقمية</h4>

<p>
  هل يمكن للأنماط الظاهرية الرقمية الكشف عن ارتباطات جينية
  تعجز المؤشرات الحيوية السريرية التقليدية عن اكتشافها؟
</p>


  </article>

  <article class="question-card">


<h4>التحقق من صلاحية كثافة الغلوكوز كمؤشر حيوي رقمي</h4>

<p>
  هل يمكن التحقق من صلاحية كثافة الغلوكوز والتمثيلات التوزيعية
  المرتبطة بها بوصفها مؤشرات حيوية رقمية قوية،
  وقابلة لإعادة الإنتاج، وأكثر غنى بالمعلومات
  حول الصحة الأيضية؟
</p>


  </article>

  <article class="question-card">


<h4>تقلّب الغلوكوز والميكروبيوم</h4>

<p>
  ما الدور الذي يؤديه تقلّب الغلوكوز في العلاقة بين
  الميكروبيوم والصحة الأيضية، وكيف يمكن لبيانات
  المراقبة المستمرة للغلوكوز تحسين توصيف هذه العلاقة؟
</p>


  </article>

  <article class="question-card">


<h4>المراقبة المستمرة للغلوكوز واعتلال الشبكية</h4>

<p>
  كيف ترتبط الأنماط الظاهرية المستمدة من المراقبة المستمرة
  للغلوكوز باعتلال الشبكية السكري وغيره من مضاعفات
  الأوعية الدموية الدقيقة؟
</p>


  </article>

  <article class="question-card question-card-wide">


<h4>التنميط الظاهري للإشارات الطبية الحيوية المستمرة</h4>

<p>
  كيف ينبغي تحويل الإشارات الفسيولوجية المستمرة إلى
  أنماط ظاهرية رقمية ذات معنى سريري وقابلة لإعادة الإنتاج،
  وما المطلوب لإنشاء إطار صارم للتنميط الظاهري القائم على
  المراقبة المستمرة للغلوكوز لدى الفئات السكانية غير المصابة بالسكري؟
</p>


  </article>

</div>

## المزيد

{% include list.html
component="card"
data="projects"
filter="!group"
style="small"
%}

</div>
