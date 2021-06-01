# Building and running a custom Docker image for a website

1. Build the custom Docker image by running the following command with the Dockerfile and the index.html file in this repo:

  ## docker build -t <image name> . 
  
  *This command will use the Dockerfile in this repo to pull the necessary base Docker image from Docker repository before the image is customized.
  
2. Check the custom image by running the following command:
  
  ## docker ps
  
  *You should see something similar to the following output:
  ## docker images
REPOSITORY                                      TAG             IMAGE ID       CREATED         SIZE
<custom image name>                              v1              ba4381a989de   3 seconds ago   22.6MB

3. Run the custom Docker image with appropriate port mapping, environmental variables, and etc:
  
  ## docker run -d -p 80:80 <custom image name>
  
A few ways to check:
  
-Using a browser: Use the following URL syntax to connect to the container you just started: http://localhost:80
  
-Make a HTTP request from the command line: Use utilities such as "curl" to make a request to http://localhost:80 
  
-Check the debug logs to see if the container is running correctly: docker logs <container ID>
  
-Check to see if the container is successfully running: docker ps
  
*If you do not see the container running, something went wrong and you can append the following option to check for the stopped containers: docker ps -a
