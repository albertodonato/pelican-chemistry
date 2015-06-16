=================
pelican-chemistry
=================

A `Pelican <http://blog.getpelican.com/>`_ theme based on the `pelican-alchemy
<https://github.com/nairobilug/pelican-alchemy>`_ one.


Rebuild the theme
-----------------

The theme CSS is located in ``src/css/style.less``. If you make any changes, you can rebuild the minified theme file with::

  $ make css

  Syntax highlight is done through `pygments <http://pygments.org/>`_. By default the "default" theme is used, you'll need to regenerate ``pygments.css`` with::

  $ PYGMENTS_STYLE=<style-name> make pygments css
