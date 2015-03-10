all: run

build: Dockerfile
	docker build -t mcandre/docker-curl .

run: build
	docker run --rm mcandre/docker-curl http://icanhazip.com
	docker run --rm mcandre/docker-curl http://ron-swanson-quotes.herokuapp.com/quotes && echo ""

clean:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f
	-docker images | grep -v IMAGE | grep docker-curl | awk '{ print $$3 }' | xargs docker rmi -f

publish:
	docker push mcandre/docker-curl
