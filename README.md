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

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
