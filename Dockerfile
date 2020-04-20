FROM python:3.5

WORKDIR /app

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

ENV PYTHONDONTWRITEBYTECODE 1
ENV FLASK_APP "/app/app.py"
ENV FLASK_ENV "development"
ENV FLASK_DEBUG True

EXPOSE 5000

CMD flask run --host=0.0.0.0