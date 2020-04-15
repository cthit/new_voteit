# Build stage
FROM python:2

WORKDIR /app

RUN pip install zc.buildout

COPY . .

RUN buildout -c buildout.cfg

RUN apt-get update

RUN apt-get install -y nginx

COPY ./etc/nginx.conf /etc/nginx/sites-available/default

CMD ["./prod.sh"]



