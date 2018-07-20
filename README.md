# eyewitness-ubuntu
Ubuntu Docker EyeWitness Container

Objective: To have a docker container encapsulating EyeWitness for easy portability and usage.

## Reference(s):
  https://github.com/ChrisTruncer/EyeWitness
  
  https://www.christophertruncer.com/eyewitness-2-0-release-and-user-guide/
  
  https://hub.docker.com/r/whiteoaksecurity/docker-eyewitness/~/dockerfile/
    
### build info
`docker build --tag eyewitness .`

## Usage Example(s):
```
docker container run --rm -it -v ~/EyeWitness:/tmp/EyeWitness/ eyewitness --headless --single http://www.google.com

docker container run --rm -it -v $(pwd):/tmp/EyeWitness/ eyewitness --headless -f /tmp/EyeWitness/file_of_urls.txt
```
