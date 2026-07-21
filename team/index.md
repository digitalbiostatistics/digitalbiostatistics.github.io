---
title: الفريق
lang: en
translation_key: team
nav:
  order: 3
  tooltip: نبذة عن فريقنا
---

# {% include icon.html icon="fa-solid fa-users" %}Team

{% include section.html %}

<div style="width: 100%; text-align: center; margin-bottom: 40px;">
  {% include list.html data="members" component="portrait" filter="role == 'pi'" %}
</div>

<div style="width: 100%; text-align: center;">
  {% include list.html data="members" component="portrait" filter="role != 'pi' and role != 'mbzuai-collaborator' and role != 'international-collaborator'" %}
</div>
<p>
  <strong>
    <em>
      يكتسب اكتشاف المتعاونين العلميين وبناء العلاقات معهم ورعايتها أهمية بالغة. وقد أدّى المتعاونون المتميزون الذين عملت معهم دورًا محوريًا في تشكيل أفكاري، ودفع مسيرتي المهنية إلى الأمام، والتأثير في المشكلات التي أختار معالجتها. ولا يحقق التعاون مع علماء بارزين من مختلف أنحاء العالم قدرًا كبيرًا من الرضا فحسب، بل يفتح أيضًا آفاقًا استثنائية لإحداث فرق عميق في حياة الملايين.
    </em>
  </strong>
</p>
{% include section.html %}

## المتعاونون في MBZUAI

<div style="width: 100%; text-align: center;">
  {% include list.html
    data="members"
    component="portrait-static"
    filter="role == 'mbzuai-collaborator'"
  %}
</div>

{% include section.html %}

## المتعاونون الدوليون (الحاليون/السابقون)

<div style="width: 100%; text-align: center;">
  {% include list.html
    data="members"
    component="portrait-static"
    filter="role == 'international-collaborator'"
  %}
</div>
