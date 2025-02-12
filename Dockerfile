FROM python:3.10
RUN pip install --upgrade pip
WORKDIR /minimap_render
COPY ./ /minimap_render
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir -r web_req.txt
CMD ["python", "src/render_web.py"]
