---
title: Team
lang: en
translation_key: team
nav:
  order: 3
  tooltip: About our team
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
      Discovering, constructing, and nurturing scientific collaborators holds immense significance. My exceptional collaborators have played a pivotal role in shaping my thoughts, advancing my professional journey, and influencing the problems I choose to tackle. Collaborating with distinguished scientists worldwide not only brings immense satisfaction but also opens extraordinary avenues to make a profound difference in the lives of millions.
    </em>
  </strong>
</p>
{% include section.html %}

## Collaborators at MBZUAI

<div style="width: 100%; text-align: center;">
  {% include list.html
    data="members"
    component="portrait-static"
    filter="role == 'mbzuai-collaborator'"
  %}
</div>

{% include section.html %}

## International Collaborators (Current/Past)

<div style="width: 100%; text-align: center;">
  {% include list.html
    data="members"
    component="portrait-static"
    filter="role == 'international-collaborator'"
  %}
</div>
