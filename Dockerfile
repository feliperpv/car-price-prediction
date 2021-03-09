FROM python:3.8-slim

WORKDIR /project

COPY Pipfile* /project/

RUN pip install pipenv
RUN pipenv install -v

WORKDIR /project/workspace

CMD ["jupyter", "lab", "--no-browser", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--config=/project/jupyter_lab_config.py"]
