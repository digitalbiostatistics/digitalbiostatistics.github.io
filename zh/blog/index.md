---
title: 新闻
lang: zh
translation_key: blog
nav:
  order: 7
  tooltip: 最新动态与其他内容
---

# 新闻

及时了解我们团队的最新动态，包括研究进展、学术成果发表、合作项目、获奖情况、活动以及其他重要里程碑。在这里，我们将分享推动数字生物统计学研究组不断发展壮大的各项活动与成就。

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