jupyter-notebook-debian
=======================

A `Jupyter <http://jupyter.org>`_  Notebook `Python <http://python.org>`_ 3 kernel based on Debian.

Example startup::

  docker run --rm -p 8888:8888 -v $(pwd):/tmp/ thewtex/jupyter-notebook-debian
