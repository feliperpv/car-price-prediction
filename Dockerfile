FROM python:3.8-slim

WORKDIR /project

COPY requirements.txt /project/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /project/workspace

CMD ["jupyter", "lab", "--no-browser", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--config=/project/jupyter_lab_config.py"]
