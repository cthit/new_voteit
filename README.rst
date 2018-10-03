Buildout configuration for sverok.voteit.se
===========================================

This is the buildout for the production server on sverok.voteit.se

Installation
------------

.. code:: bash

  git clone https://github.com/VoteIT/sverok_buildout.git
  cd sverok_buildout
  virtualenv . -p python2
  source bin/activate
  pip install zc.buildout
  buildout -c develop.cfg

You're of course free to copy and adapt this version.
Any contribution or suggestions is of course encouraged - and appreciated!

/The VoteIT team
