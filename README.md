# docker-curl - a Docker container for curl

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-curl/

# EXAMPLE

```
$ docker pull mcandre/docker-curl

$ docker run --rm mcandre/docker-curl http://www.timeapi.org/utc/now
2015-03-07T20:14:05+00:00

$ docker run --rm mcandre/docker-curl http://icanhazip.com
40.50.60.70

$ docker run --rm mcandre/docker-curl http://ron-swanson-quotes.herokuapp.com/quotes
{"quote":"Never half-ass two things. Whole-ass one thing."}
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker
```

# DEVELOPMENT

## Build

```
$ git clone https://github.com/mcandre/docker-curl.git
$ cd docker-curl/
$ docker build -t mcandre/docker-curl .

$ docker run --rm mcandre/docker-curl http://www.timeapi.org/utc/now
2015-03-07T20:14:05+00:00

$ docker run --rm mcandre/docker-curl http://icanhazip.com
40.50.60.70

$ docker run --rm mcandre/docker-curl http://ron-swanson-quotes.herokuapp.com/quotes
{"quote":"Never half-ass two things. Whole-ass one thing."}
```

## Publish

```
$ docker push mcandre/docker-curl
```

## Cleanup

Sometimes you want to halt and delete Docker containers or images.

### Destroy all containers matching query

```
$ docker ps -a | grep -v IMAGE | grep docker-curl | awk '{ print $1 }' | xargs docker rm -f
```

### Destroy all images matching query

```
$ docker images | grep -v IMAGE | grep docker-curl | awk '{ print $3 }' | xargs docker rmi -f
```
