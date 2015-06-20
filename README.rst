=================
pelican-chemistry
=================

A `Pelican <http://blog.getpelican.com/>`_ theme based on `pelican-alchemy
<https://github.com/nairobilug/pelican-alchemy>`_, with some tweaks and
reworks.


Rebuild CSS
-----------

The theme CSS is located in ``src/css/style.less``. If you make any changes,
you can rebuild the minified theme file with::

  $ make css

Syntax highlight is done through `pygments <http://pygments.org/>`_. The
default theme can be changed regenerating the ``pygments.css`` file::

  $ PYGMENTS_STYLE=<style-name> make pygments css
