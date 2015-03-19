# Dockerfile for IRuby

Dockerize IRuby and Nyaplot.
This image contains IPython notebook & IRuby & Nyaplot.

IPython: http://ipython.org/

IRuby: https://github.com/minad/iruby

Nyaplot: https://github.com/domitry/nyaplot

## Usage

```
$ docker run -d -p 8888:8888 nagachika/iruby:latest
```

open `http://(DOCKER HOST):8888` in browser.

