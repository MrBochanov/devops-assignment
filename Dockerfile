FROM python:3.9

RUN mkdir /app 
COPY . /app
#COPY pyproject.toml /app 

WORKDIR /app

#ENV PYTHONPATH=${PYTHONPATH}:${PWD} 

RUN pip install poetry
RUN poetry install

RUN poetry shell