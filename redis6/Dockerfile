#基础镜像
FROM redis

#修复时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

#创建数据文件夹
RUN mkdir /var/lib/redis && chmod 777 /var/lib/redis

#修改文件权限,使之可以通过config rewrite重写
#RUN chmod 777 /usr/local/etc/redis/redis.conf

# Redis客户端连接端口
EXPOSE 7005
# 集群总线端口:redis客户端连接的端口 + 10000
EXPOSE 17005

#使用自定义conf启动
CMD chmod 777 /var/lib/redis && redis-server /usr/local/etc/redis/redis.conf