FROM ubuntu:22.04

ARG TOKEN
ARG USERNAME

ENV GITHUB_TOKEN ${TOKEN}
ENV GITHUB_USERNAME ${USERNAME}
ENV GITHUB_PROJECT_URL https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/zeeshanak23/clinic.git
RUN mkdir -p /webFile
WORKDIR /webFile

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install curl -y 
RUN curl -s https://deb.nodesource.com/setup_18.x | bash
RUN apt-get install nodejs -y 
RUN apt-get install wget -y
RUN git clone $GITHUB_PROJECT_URL


RUN npm install -g npm@9.7.1

EXPOSE 3000
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

# HEALTHCHECK --interval=30s --timeout=10s \
# CMD wget http://localhost:3000/ || exit 1



CMD ["/entrypoint.sh"]