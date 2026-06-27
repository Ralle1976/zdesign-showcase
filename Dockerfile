# Z.Design showcase as a dockerized static site (nginx). Fits the Control-Tower
# deploy model: git pull + docker compose up.
FROM nginx:1.27.5-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Copy each dir to its EXPLICIT subdir path. (COPY of a directory copies its
# CONTENTS into the dest — so the dest must name the subdir, otherwise
# designs/*.html and assets/*.jpeg get flattened into the root and the
# /designs/* + /assets/* URLs 404.)
COPY index.html /usr/share/nginx/html/index.html
COPY designs /usr/share/nginx/html/designs/
COPY assets /usr/share/nginx/html/assets/
EXPOSE 80
