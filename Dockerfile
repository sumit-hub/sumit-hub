FROM python:3.10-slim-buster
WORKDIR /app
COPY ./Requirements.txt /app
COPY ./Requirements.txt /app
RUN apt-get update \
    && apt install --yes build-essential python3-dev
    #&& apt-get install --yes --no-install-recommends \
    #    gcc g++ libffi-dev \
    #&& apt-get autoremove --yes gcc g++ libffi-dev \
    #&& rm -rf /var/lib/apt/lists/*

RUN pip install -r Requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP=run.py
#CMD ["flask", "run", "--host", "0.0.0.0"]
CMD ["uwsgi", "--http", "0.0.0.0:5000","--wsgi-file","wsgi.py","--callable","application","--processes","1","--threads","1"]
