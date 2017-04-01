all: build serve

build:
	docker build -t gitbook-5533:latest .

serve:
	docker run --rm -d -p 4000:4000 --name server-5533 gitbook-5533:latest

dev:
	docker run --rm -it -p 4000:4000 -v`pwd`:/gitbook --workdir /gitbook --name dev-5533 gitbook-5533:latest gitbook install && gitbook serve 

clean:
	-docker rm -f server-5533 dev-5533
