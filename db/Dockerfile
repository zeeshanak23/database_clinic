FROM ubuntu:22.04

RUN apt update

RUN apt-get install mysql-server -y 

COPY ./entrypoint.sh /

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]