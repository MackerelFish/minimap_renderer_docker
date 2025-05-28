FROM python:3.10.17-alpine3.21
RUN pip install --upgrade pip setuptools
WORKDIR /minimap_render
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY ./ ./
CMD ["python", "src/render_web.py"]
