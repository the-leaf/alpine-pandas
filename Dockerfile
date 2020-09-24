FROM python:3.8.5-alpine3.12

LABEL maintainer="tkp2147.abyss@gmail.com>"

RUN apk upgrade

RUN apk --update add --no-cache g++ git curl make gcc zlib-dev nano py3-pip

RUN python -m pip install --upgrade pip

RUN pip install line-bot-sdk

RUN pip install Jinja2

RUN pip install gunicorn

RUN pip install pandas

RUN pip install beautifulsoup4

RUN pip install datetime

RUN pip install flask

RUN pip install Flask-Script

RUN mkdir -p /opt/pdc \
	&& git clone https://github.com/the-leaf/newpdc.git /opt/pdc \
	&& cd /opt/pdc
	
ENTRYPOINT ./pcd-start