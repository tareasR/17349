FROM alpine
RUN apk add nginx
#RUN nginx
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
#COPY c:/users/xxx/17349/despliegue /var/lib/nginx/html
COPY ./despliegue /var/lib/nginx/html
COPY ./rafael.conf /etc/nginx/http.d/default.conf