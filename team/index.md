---
title: Team
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
  {% include list.html data="members" component="portrait" filter="role != 'pi' and role != 'collaborator'" %}
</div>

{% include section.html %}

## MBZUAI Collaborators

<div style="width: 100%; text-align: center;">
  {% include list.html
    data="members"
    component="portrait-static"
    filter="role == 'mbzuai-collaborator'"
  %}
</div>

{% include section.html %}

## International Collaborators

<div style="width: 100%; text-align: center;">
  {% include list.html
    data="members"
    component="portrait-static"
    filter="role == 'international-collaborator'"
  %}
</div>
