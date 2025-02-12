FROM python:3.10
RUN pip install --upgrade pip
WORKDIR /minimap_render
COPY ./ /minimap_render
RUN pip install -r requirements.txt
CMD ["python", "src/render_web.py"]
