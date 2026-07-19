---
title: News
lang: en
translation_key: blog
nav:
  order: 7
  tooltip: Updates and miscellany
---

# News

Stay up to date with the latest news from our team, including research developments, publications, collaborations, awards, events, and other important milestones. Here, we share the activities and achievements shaping the growth of the Digital Biostatistics group.
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
