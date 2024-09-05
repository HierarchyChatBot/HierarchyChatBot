FROM nginx:alpine

# Copy the NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Change the timezone to UTC+8
RUN ln -sf /usr/share/zoneinfo/Asia/Singapore /etc/localtime 

# Copy the htpasswd file for basic authentication
COPY htpasswd/.htpasswd /etc/nginx/.htpasswd

# Expose ports 80 and 443 for HTTP and HTTPS traffic
EXPOSE 80
EXPOSE 443
