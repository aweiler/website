<!-- a partial to abstract away code that deals with whether the date
should be a link. needs to be so compact because of how the include
tag adds whitespace -->
{% capture datestring %}
<strong>{{ post.date | date_to_string }}</strong>
{% endcapture %}
{% capture datestring_linkified %}
{% if post.summary %}
<a href="{{ post.url }}">{{datestring}}</a>
{% else %}
{{datestring}}
{% endif %}
{% endcapture %}
{% capture stuff %}
<li>
  {{datestring_linkified}}: {{post.title}}
</li>
{% endcapture %}
{{ stuff | strip_newlines }}
