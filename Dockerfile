FROM nginx:alpine

# Remove the default NGINX welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom index.html file to the NGINX document root
COPY index.html /usr/share/nginx/html/