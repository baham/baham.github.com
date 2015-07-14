<head>
  <meta charset="utf-8">
  <title>{% if page.title %}{{ page.title }}-{% elsif page.url contains "blog/page" %}{{ 'One of the Pages From' }}-{% endif %}  {{ site.title }}</title>
  <meta name="author" content="{{ site.author }}">

{% capture description %}{% if page.description %}{{ page.description }}{% elsif page.title %}{{ content | raw_content }}{% elsif page.url contains"blog/page" %}{{ "" }}{% else %}{{ site.description  }}{% endif %}{% endcapture %}
<meta name="description" content="{{ description | strip_html | condense_spaces | truncate:150 }}" />

{% capture keywords %}{% if page.keywords %}{{ page.keywords }}{% elsif page.title %}{{""}}{% elsif page.url contains "blog/page" %}{{ "" }}{% else %}{{ site.keywords }}{% endif %}{% endcapture %}
<meta name="keywords" content="{{ keywords | strip_html | condense_spaces }}" />