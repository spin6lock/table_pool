docker:
	docker build --build-arg http_proxy=$(http_proxy) --compress .

all:
	cd sproto && make
	lua main.lua
