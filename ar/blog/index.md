---
title: الأخبار
lang: en
translation_key: blog
nav:
  order: 7
  tooltip: التحديثات والمنوعات
---

# الأخبار

ابقوا على اطلاع بآخر أخبار فريقنا، بما في ذلك التطورات البحثية، والمنشورات العلمية، وأوجه التعاون، والجوائز، والفعاليات، وغيرها من المحطات المهمة. نشارك هنا الأنشطة والإنجازات التي تسهم في نمو مجموعة الإحصاء الحيوي الرقمي وتطوّرها.

<div style="max-width: 800px; margin: 40px auto 10px auto;">
  <img
    src="{{ '/images/news.png' | relative_url }}"
    alt=""
    style="width: 100%; display: block; border-radius: 4px;"
    >
</div>
{% include section.html %}

{% include search-box.html %}

{% include tags.html tags=site.tags %}

{% include search-info.html %}

{% include list.html data="posts" component="post-excerpt" %}