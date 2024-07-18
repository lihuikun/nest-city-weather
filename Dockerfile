# 使用 Node.js 官方的 Node 镜像作为基础镜像
FROM node:latest

# 设置工作目录
WORKDIR /usr/src

# 复制 package.json 和 package-lock.json 到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 将整个项目复制到工作目录
COPY . .

# 暴露 Nest.js 应用程序的端口（根据您的 Nest.js 项目配置）
EXPOSE 3000

# 启动 Nest.js 应用程序
CMD ["npm", "run", "start"]
