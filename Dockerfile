FROM nginx:alpine
#FROM specifies the layer in which the specified Docker image that will be used
COPY . /usr/share/nginx/html
#COPY will pull the contents from the current directory when you build the Docker image
