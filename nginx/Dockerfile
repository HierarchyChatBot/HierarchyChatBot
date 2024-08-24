FROM nginx:alpine

# Copy the NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Change the timezone to UTC+8
RUN ln -sf /usr/share/zoneinfo/Asia/Singapore /etc/localtime 

# Copy the htpasswd file for basic authentication
COPY htpasswd/.htpasswd /etc/nginx/.htpasswd

EXPOSE 80
