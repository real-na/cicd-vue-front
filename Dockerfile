# from：从哪继承过来,表示继承自nginx的一个镜像
FROM nginx
# LABEL：进行标识，没有特殊意思
LABEL name="vue-front"
LABEL version="1.0"
# 把当前目录下的dist文件夹（./dist）下的所有文件(vue-front下的所有文件)都拷贝到容器下的/usr/share/nginx/html里面去
# nginx镜像里面会有一个app，没有就会自动创建
# /usr/share/nginx/html : 因为在宿主机上安装nginx
# 装好以后，默认的静态文件根目录就是/usr/share/nginx/html
# COPY 宿主机目录 容器目录
COPY ./dist /usr/share/nginx/html
# ./vue-front.conf：nginx配置文件
COPY ./vue-front.conf /etc/nginx/conf.d
# EXPOSE：向外暴露80端口
EXPOSE 80
