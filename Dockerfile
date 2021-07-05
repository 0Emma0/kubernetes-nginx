FROM nginx:1.20.1-alpine
# Copio el html personalizado
#ADD https://repogithub.com/index.html /usr/share/nginx/html/
ADD . /usr/share/nginx/html/
# Set read only al index.html
RUN chmod +r /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]