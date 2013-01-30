---
layout: default
title: Notes
---
Medium-length writeups.

{% for post in site.categories.work %}
{{ post.date | date_to_string }}
: [{{ post.title }}]({{ post.url }})  
  {{ post.summary }}
{% endfor %}
