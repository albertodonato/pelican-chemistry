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
``GOOGLE_ANALYTICS``         The Google Analytics id for the site.
``SHOW_ARTICLE_AUTHOR``      Whether to show articles author(s) in the index
                             page.
``ARCHIVES_LINK_ON_MEU``     Whether to include a link to the archives page in
                             the menu.
``CATEGORIES_LINK_ON_MENU``  Whether to include a link to the categories page
                             in the menu.
``TAGS_LINK_ON_MENU``        Whether to include a link to the tags page in the
                             menu.
``LOCAL_RESOURCES``          If set to ``True``, local resources are used
                             instead of CDN ones for css.
===========================  ==================================================


Rebuild CSS
-----------

The theme CSS is located in ``static/css/style.less``. If you make any changes,
you can rebuild the minified theme file with::

  $ make css

Syntax highlight is done through `pygments <http://pygments.org/>`_. The
default theme can be changed regenerating the pygments CSS file::

  $ PYGMENTS_STYLE=<style-name> make pygments
