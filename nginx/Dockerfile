FROM nginx:alpine

# Copy the NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the htpasswd file for basic authentication
COPY htpasswd/.htpasswd /etc/nginx/.htpasswd

EXPOSE 80
