=================
pelican-chemistry
=================

A `Pelican <http://blog.getpelican.com/>`_ theme originally based on
`pelican-alchemy <https://github.com/nairobilug/pelican-alchemy>`_.


Theme-specific settings
-----------------------

The theme provides the following additional settings:

===========================  ==================================================
Name                         Value
===========================  ==================================================
``TAGLINE``                  A text to display below the site title.
``LICENSE_NAME``             License to display in the page footer (e.g.
                             ``LICENSE_NAME = 'CC BY-SA 4.0'``)
``LICENSE_URL``              License URL. Should be set if the license name is
                             set.
``FAVICON_URL``              URL for the favicon (e.g.
                             ``FAVICON_URL = '/favicon.png'``). This is not
                             prepended with SITEURL.
``CUSTOM_CSS``               Absolute URL for an additional CSS file (e.g.
                             ``CUSTOM_CSS = '/custom.css'``). This is not
                             prepended with ``SITEURL``.
``ARCHIVES_LINK_ON_MEU``     Whether to include a link to the archives page in
                             the menu.
``CATEGORIES_LINK_ON_MENU``  Whether to include a link to the categories page
                             in the menu.
``TAGS_LINK_ON_MENU``        Whether to include a link to the tags page in the
                             menu.
``SHOW_ARTICLE_AUTHOR``      Whether to show articles author(s) in the index
                             page.
``LOCAL_RESOURCES``          If set to ``True``, local resources are used
                             instead of CDN ones for CSS.
``GOOGLE_ANALYTICS``         The Google Analytics id for the site.
``DISQUS_SITENAME``          The Disqus site name to enable embedded comments
                             embedding in posts.
``GOOGLEPLUS_COMMENTS``      If set to ``True``, enable Google+ comments section
                             in posts.
===========================  ==================================================


Supported plugins
-----------------

1. headerid
~~~~~~~~~~~

The theme supports styling header links from the `headerid
<https://github.com/getpelican/pelican-plugins/tree/master/headerid>`_
plugin. Anchors for permalinks to paragraphs are shown on hover on titles.

2. tipue_search
~~~~~~~~~~~~~~~

If the `tipue_search
<https://github.com/getpelican/pelican-plugins/tree/master/tipue_search>`_
plugin is enabled, a search box is shown in pages and search is available. Note
that you need to add `search` to `DIRECT_TEMPLATES` for the result page to
work.


Rebuild CSS
-----------

The theme CSS is located in ``static/css/style.less``. If you make any changes,
you can rebuild the minified theme file with::

  $ make css

Syntax highlight is done through `pygments <http://pygments.org/>`_. The
default theme can be changed regenerating the pygments CSS file::

  $ PYGMENTS_STYLE=<style-name> make pygments
