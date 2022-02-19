FROM nginx
LABEL name="vue-front"
LABEL version="1.0"
COPY ./dist /opt/docker-mv
COPY ./vue-cicd-front.conf /etc/nginx/conf.d
EXPOSE 6008