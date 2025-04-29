FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY index.html .
COPY styles.css .
COPY script.js .
COPY images/ images/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
