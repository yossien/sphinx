FROM sphinxdoc/sphinx
RUN apt update -y && \
  apt-get install -y haskell-platform pandoc && \
  mkdir -p /usr/share/man/man1 && \
  apt-get install -y plantuml && \
  pip install dot2tex && \
  pip install sphinxcontrib-blockdiag && \
  pip install sphinxcontrib-nwdiag && \
  pip install sphinx-diagrams && \
  pip install sphinxcontrib-plantuml && \
  pip install sphinx-autobuild && \
  pip install nbsphinx commonmark recommonmark && \
  pip install sphinx_rtd_theme

