FROM python:3.8.5-alpine3.12

LABEL maintainer="tkp2147.abyss@gmail.com>"

RUN apk upgrade

RUN apk --update add --no-cache g++ git curl make gcc zlib-dev nano py3-pip

RUN python -m pip install --upgrade pip

RUN pip install pandas

RUN mkdir -p /opt/pdc \
	&& git clone https://github.com/the-leaf/newpdc.git /opt/pdc \
	&& cd /opt/pdc \
	&& pip install -r request.txt