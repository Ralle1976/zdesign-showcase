# Z.Design showcase as a dockerized static site (nginx). Fits the Control-Tower
# deploy model: git pull + docker compose up.
FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html designs assets /usr/share/nginx/html/
EXPOSE 80
