FROM python:3.10.17-slim-bookworm
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN pip install --upgrade pip setuptools
WORKDIR /minimap_render
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY ./ ./
CMD ["python", "src/render_web.py"]
