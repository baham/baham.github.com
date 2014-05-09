	{% capture description %}{% if page.description %}{{ page.description }}{% elsif site.description %}{{ site.description }}{% else %}{{ content | raw_content }}{% endif %}{% endcapture %}
	<meta name="description" content="{{ description | strip_html | condense_spaces | truncate:150 }}" />
	{% capture keywords %}{% if page.keywords %}{{ page.keywords }}{% elsif site.keywords %}{{ site.keywords }}{% endif %}{% endcapture %}
	<meta name="keywords" content="{{ keywords | strip_html | condense_spaces }}" />