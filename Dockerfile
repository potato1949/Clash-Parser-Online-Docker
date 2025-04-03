FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件
COPY requirements.txt ./
COPY parser.py ./

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 创建配置目录
RUN mkdir -p /app/conf

# 暴露端口
EXPOSE 8000

# 设置默认幻数环境变量
ENV MAGIC_NUMBER=jynb

# 启动应用
CMD ["python", "parser.py"]