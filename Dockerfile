FROM python:3.9

COPY . /

RUN pip install poetry
RUN POETRY_VIRTUALENVS_CREATE=false poetry install

ENTRYPOINT ["./gunicorn.sh"]