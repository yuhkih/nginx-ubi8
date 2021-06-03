FROM registry.access.redhat.com/ubi8/ubi:8.4
RUN yum install -y nginx
# RUN touch /run/nginx.pid  && \
#    chown -R 1001:0 /run/nginx.pid 
COPY index.html /usr/bin/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["-g","daemon off;"]
ENTRYPOINT ["nginx"]
USER 1001