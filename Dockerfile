FROM python:3.8-slim

WORKDIR /project

COPY requirements.txt /project/requirements.txt

# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir jupyterlab==3.0.0
RUN pip install --no-cache-dir pandas==1.2.1
RUN pip install --no-cache-dir numpy==1.19.1
RUN pip install --no-cache-dir scikit-learn==0.23.1
RUN pip install --no-cache-dir seaborn==0.11.0
RUN pip install --no-cache-dir statsmodels==0.11.1
RUN pip install --no-cache-dir matplotlib==3.2.2
RUN pip install --no-cache-dir xgboost==1.3.3

WORKDIR /project/workspace

CMD ["jupyter", "lab", "--no-browser", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--config=/project/jupyter_lab_config.py"]
