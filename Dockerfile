FROM nginx:alpine
COPY . /usr/share/nginx/html

EXPOSE 80 6503     

 CMD ["nginx", "-g", "daemon off;"]