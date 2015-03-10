all: run

build: Dockerfile
	docker build -t mcandre/docker-curl .

run: clean-containers build
	docker run --rm mcandre/docker-curl http://icanhazip.com
	docker run --rm mcandre/docker-curl http://ron-swanson-quotes.herokuapp.com/quotes && echo ""

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep docker-curl | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images

publish:
	docker push mcandre/docker-curl
