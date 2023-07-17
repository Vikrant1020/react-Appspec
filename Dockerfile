FROM  ubuntu:20.04

WORKDIR /app

RUN apt update

RUN apt install nginx wget curl -y && apt update
RUN curl -s https://deb.nodesource.com/setup_16.x | bash && apt install nodejs -y

COPY package.* .
RUN npm install

COPY . .
RUN npm run build 

RUN cp -r ./build/* /var/www/html 

EXPOSE 80

ENTRYPOINT [ "sh","build.sh" ]