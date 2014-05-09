{% capture description %}{% if page.description %}{{ page.description }}{% elsif page.title %}{{ content | raw_content }}{% else %}{{ site.description }}{% endif %}{% endcapture %}
<meta name="description" content="{{ description | strip_html | condense_spaces | truncate:150 }}" />

{% capture keywords %}{% if page.keywords %}{{ page.keywords }}{% elsif page.title %}{{""}}{% else %}{{ site.keywords }}{% endif %}{% endcapture %}
<meta name="keywords" content="{{ keywords | strip_html | condense_spaces }}" />