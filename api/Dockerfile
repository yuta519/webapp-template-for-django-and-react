FROM python:3.12-slim
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE=1
RUN apt-get update \
    && apt-get install -y build-essential python3-dev default-libmysqlclient-dev \
    && apt-get clean
RUN mkdir /src
WORKDIR /src
COPY requirements.txt /src
RUN pip install -r requirements.txt

COPY entrypoint.sh /src
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/src/entrypoint.sh"]

