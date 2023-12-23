# Dockerfile
FROM nginx:latest

# Install git
RUN apt-get update && \
    apt-get install -y git

# Clone the repository into a temporary directory
RUN git clone https://github.com/chandradeoarya/2048.git /tmp/2048

# Copy the game files into the Nginx html directory
RUN rm -rf /usr/share/nginx/html/* && \
    cp -r /tmp/2048/* /usr/share/nginx/html/

EXPOSE 80

#to run this docker file use below commands
#docker build -t runway-nginx-game .
#docker run -d -p 8080:80 my-nginx-2048