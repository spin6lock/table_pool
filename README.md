# Table缓存池
这个例子简单展示了sproto如何复用Lua Table做解码用

编译执行环境的dockerhub镜像: https://hub.docker.com/r/spin6lock/table_pool

在项目目录运行docker命令：
```bash
docker run --rm -it -v $(pwd):/workdir --name table_pool -e CPATH="/usr/include/lua5.4" --entrypoint sh spin6lock/table_pool -c "cd /workdir && sh"
```
