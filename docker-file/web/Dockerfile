FROM nginx
LABEL "Project"="Vprofile"
LABEL "Author"="daus"

RUN rm -rf /etc/nginx/conf.d/default.conf
COPY vproapp.conf /etc/nginx/conf.d/vproapp.conf