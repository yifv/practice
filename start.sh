# 拉取代码
git phull

# 安装依赖和打包
yarn --registry=https://registry.npm.taobao.org/ && yarn build

# 删除容器
docker rm -f practice &> /dev/null

# 启动容器  
# --restart参数有3个值 no为默认值，表示容器退出时，docker不自动重启容器。
# on-failure表示若容器退出状态非0，则docker自动重启容器，还可以指定重启次数，若超过指定次数未能重启，则放弃。
# always表示只要容器退出，则docker将自动重启容器。
docker run -d --restart=on-failure:5\
    -p 8080:80 \
    -v $PWD/dist:/usr/share/nginx/html \
    --name practice nginx