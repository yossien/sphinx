docker run --rm -p 8001:8000 -v ${PWD}:/docs sphinx sphinx-autobuild --host 0.0.0.0 -b html /docs /docs/_build/html
