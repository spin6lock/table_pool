all:
	cd sproto && make
	lua main.lua

docker:
	docker build --build-arg http_proxy=$(http_proxy) --compress build

clean:
	cd sproto && make clean
