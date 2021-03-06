Buster
======

Super simple, Totally awesome, Brute force **static site generator for**
`Ghost <http://ghost.org>`__.

Start with a clean, no commits Github repository.

*Generate Static Pages. Preview. Deploy to Github Pages.*


The interface
-------------

``setup [--gh-repo=<repo-url>]``

      Creates a GIT repository inside ``static/`` directory.

``generate [--domain=<local-address>]``

      Generates static pages from locally running Ghost instance.

``preview``

      Preview what's generated on ``localhost:9000``.

``deploy``

      Commits and deploys changes static files to Github repository.

``add-domain <domain-name>``

      Adds CNAME file with custom domain name as required by Github
Pages.

Buster assumes you have ``static/`` folder in your current directory (or
creates one during ``setup`` command). You can specify custom directory
path using ``[--dir=<path>]`` option to any of the above commands.

Don't forget to change your blog URL in config.js in Ghost.


The Installation
----------------

Installing Buster is easy with pip:

    $ pip install buster

You'll then have the wonderful ``buster`` command available.

You could also clone the source and use the ``buster.py`` file directly.

Requirements
------------

-  wget: Use ``brew install wget`` to install wget on your Mac.
   Available by default on most linux distributions.

The following python packages would be installed automatically when
installed via ``pip``:

-  `docopt <https://github.com/docopt/docopt>`__: Creates beautiful
   command line interfaces *easily*.
-  `GitPython <https://github.com/gitpython-developers/GitPython>`__:
   Python interface for GIT.

Ghost. What?
------------

`Ghost <http://ghost.org/features/>`__ is a beautifully designed,
completely customisable and completely `Open
Source <https://github.com/TryGhost/Ghost>`__ **Blogging Platform**. If
you haven't tried it out yet, check it out. You'll love it.

The Ghost Foundation is not-for-profit organization funding open source
software and trying to completely change the world of online publishing.
Consider `donating to Ghost <http://ghost.org/about/donate/>`__.

Buster?
~~~~~~~

Inspired by THE GhostBusters.

.. figure:: http://upload.wikimedia.org/wikipedia/en/c/c7/Ghostbusters_cover.png
   :alt: Ghost Buster Movie Poster

   Ghost Buster Movie

Run via Docker
--------------

`Docker <https://www.docker.io/>`__ is an easy way to run Buster in an isolated environment. 

Substitute a `Github access token <https://help.github.com/articles/creating-an-access-token-for-command-line-use>`__
for ${TOKEN}, your **https** stype repository URL for ${REPO}, and your website for 
${SITE}

    $ TOKEN=q2e42be10665b0307069a56bc389f342a797d34e
    $ REPO=github.com/you/your_repo.git
    $ SITE=my_ghost_blog.com
    $ sudo docker run axitkhurana/buster /bin/sh -c "buster setup-clone --gh-repo=https://${TOKEN}@${REPO} && \
        buster generate --domain=${SITE} && \
        buster deploy"

If you only ever use Buster, then you only have to run setup-clone once. After 
that you could store and reuse the container for generate & deploy. 

Contributing
------------

Checkout the existing
`issues <https://github.com/axitkhurana/buster/issues>`__ or create a
new one. Pull requests welcome!

--------------

*Made with* `jugaad <http://en.wikipedia.org/wiki/Jugaad>`__ *in*
`Dilli <http://en.wikipedia.org/wiki/Delhi>`__.
