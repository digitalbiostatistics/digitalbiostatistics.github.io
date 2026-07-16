---
title: 团队
lang: zh
translation_key: team
nav:
  order: 3
  tooltip: 了解我们的团队
---

# {% include icon.html icon="fa-solid fa-users" %} 团队

{% include section.html %}

{% include list.html
  data="members"
  component="portrait"
  filter="role == 'pi'"
%}

{% include list.html
  data="members"
  component="portrait"
  filter="role != 'pi' and role != 'mbzuai-collaborator' and role != 'international-collaborator'"
%}

{% include section.html %}

## MBZUAI 合作者

{% include list.html
  data="members"
  component="portrait-static"
  filter="role == 'mbzuai-collaborator'"
%}

{% include section.html %}

## 国际合作者

{% include list.html
  data="members"
  component="portrait-static"
  filter="role == 'international-collaborator'"
%}
