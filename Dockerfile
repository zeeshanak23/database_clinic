# FROM ubuntu:22.04

# COPY . .

# RUN apt update
# RUN apt-get install curl -y 
# RUN curl -s https://deb.nodesource.com/setup_18.x | bash
# RUN apt-get install nodejs -y 
# RUN apt-get install mysql-server -y 
# RUN apt-get install wget -y
# RUN git clone https://zeeshanak23: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@github.com/zeeshanak23/clinic.git  
# RUN cd clinic
# RUN install npm
# RUN npm install -g npm@9.7.1

# # HEALTHCHECK --interval=30s --timeout=10s \
# # CMD wget http://localhost:3000/ || exit 1

# WORKDIR /clinic

# CMD ["npm","run","dev"]