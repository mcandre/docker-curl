# docker-curl - a Docker container for curl

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-curl/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-curl .
docker run --rm mcandre/docker-curl http://icanhazip.com
40.50.60.70
docker run --rm mcandre/docker-curl http://ron-swanson-quotes.herokuapp.com/quotes && echo ""
{"quote":"Never half-ass two things. Whole-ass one thing."}
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
