# Table缓存池
这个例子简单展示了sproto如何复用Lua Table做解码用

dockerhub镜像：
https://hub.docker.com/r/spin6lock/table_pool

在当前目录运行docker命令：
```docker run --rm -it --entrypoint sh --name table_pool -e CPATH="/usr/include/lua5.4" -v $(pwd):/workdir spin6lock/table_pool```
