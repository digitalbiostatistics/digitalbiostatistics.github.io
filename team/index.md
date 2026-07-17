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
