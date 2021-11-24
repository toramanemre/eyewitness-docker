# eyewitness-docker
An EyeWitness Docker Container leveraging Ubuntu

Objective: To have a docker container encapsulating EyeWitness for easy portability and usage.

## Reference(s):
  https://github.com/ChrisTruncer/EyeWitness
  
  https://www.christophertruncer.com/eyewitness-2-0-release-and-user-guide/
  
  https://hub.docker.com/r/whiteoaksecurity/docker-eyewitness/~/dockerfile/

---

### historic  build info for tag 0.1.0
`docker build --tag eyewitness .`

Also available pre-built from docker hub
`docker pull ly4e/eyewitness-docker:0.1.0`


## Usage Example(s) for tag 0.1.0:
```
docker container run --rm -it -v $(pwd)/EyeWitness:/tmp/EyeWitness/ [docker_image_name] --headless --single http://www.google.com

docker container run --rm -it -v $(pwd)/EyeWitness:/tmp/EyeWitness/ [docker_image_name] --headless -f /tmp/EyeWitness/file_of_urls.txt
```
