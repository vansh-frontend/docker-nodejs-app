FROM node:alpine

COPY . /home/app
# Set working directory
WORKDIR /home/app

EXPOSE 3000

ENTRYPOINT [ "sh","init.sh" ]
