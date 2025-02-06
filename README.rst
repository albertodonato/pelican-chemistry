===================================================
chemistry - A minimalistic responsive Pelican theme
===================================================

Chemistry is theme for the Pelican_ static website generator which aims at
being minimalistic, but also easily tunable and extensible.


Theme-specific settings
-----------------------

The theme provides the following additional settings:

=======================  ===================================================
Name                     Value
=======================  ===================================================
``TAGLINE``              A text to display below the site title.
``LICENSE_NAME``         License to display in the page footer (e.g.
                         ``LICENSE_NAME = 'CC BY-SA 4.0'``)
``LICENSE_URL``          License URL. Should be set if the ``LICENSE_NAME``
                         is set.
``FAVICON_URL``          URL for the favicon (e.g.
                         ``FAVICON_URL = '/favicon.png'``). This is not
                         prepended with ``SITEURL``.
``CUSTOM_CSS``           URL for an additional CSS file (e.g.
                         ``CUSTOM_CSS = 'custom.css'``). This is prepended
                         with ``SITEURL``.
``PAGES_ON_MENU``        If set to ``True``, include links to pages in menu.
                         Pages can be sorted in the desired order by setting
                         the ``index`` metadata in the page to an integer
                         value.
``INDEXES_ON_MENU``      If set to ``True``, include a dropdown in menu with
                         links to index pages (categories, tags, archives,
                         feeds).
``SHOW_ARTICLE_AUTHOR``  Whether to show articles author(s) on the index
                         page.
``LOCAL_RESOURCES``      If set to ``True``, local resources are used
                         instead of CDN ones for CSS (for development).
``GOOGLE_ANALYTICS``     The `Google Analytics`_ id for the site.
``MASTODON_LINK``        Mastodon link, for verification.
=======================  ===================================================


Supported plugins
-----------------

The theme supports some plugins from pelican-plugins_.

headerid
~~~~~~~~

The theme supports styling header links from the headerid_ plugin. Anchors for
permalinks to paragraphs are shown on hover on titles.


Rebuild CSS
-----------

Rebuilding CSS requires ``less`` and ``less-plugin-clean-css``, which are
available on npm_. These can be installed with::

  make deps

The theme CSS is located in ``static/css/style.less``. If you make any changes,
you can rebuild the minified theme file with::

  make css

Syntax highlight is done through Pygments_. The default theme can be changed
regenerating the pygments CSS file with::

  make pygments PYGMENTS_STYLE=<style-name>


.. _Pelican: http://blog.getpelican.com/
.. _`Google Analytics`: https://analytics.google.com/
.. _`Google+`: https://plus.google.com/
.. _pelican-plugins: https://github.com/getpelican/pelican-plugins
.. _headerid:
   https://github.com/getpelican/pelican-plugins/tree/master/headerid
.. _npm: https://www.npmjs.com/
.. _Pygments: http://pygments.org/
