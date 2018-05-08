FROM python:3.6.4
ENV HOME /app/oauth2.0
COPY ./* $HOME
WORKDIR $HOME
RUN pip install -U pip
RUN pip install flask
RUN pip install flask_cors
RUN pip install flask_restful
RUN pip install uwsgi

RUN chown 1001:1001 /app -R
USER 1001