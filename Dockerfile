FROM nginx:alpine

# Railway 动态端口适配：envsubst 在启动时自动替换 ${PORT}
COPY nginx.conf /etc/nginx/templates/default.conf.template

# 复制静态文件
COPY public/ /usr/share/nginx/html/

# EXPOSE 仅文档用途，Railway 实际使用 PORT 环境变量
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
