# docker deployment
## file mapping 
```shell
docker run \
--name labelme \
-p 8080:80 \
-d \
-v /home/qihao/Documents/LabelMeAnnotationTool:/var/www/html/LabelMeAnnotationTool \
--entrypoint "/bin/bash" \
-t labelme

# restart apache inside the container
docker exec labelme service apache2 restart
```

## basic usage
- `docker exec -it labelme /bin/bash` : enter into labelme container and remain it still running in the background once you input `CTRL+D` or `exit`.

-  `docker run -t -i ubuntu /bin/bash`: 
    - docker run: runs a container.
    - ubuntu: is the image you would like to run.
    - `-t`: flag assigns a pseudo-tty or terminal inside the new container.
    - `-i`: flag allows you to make an interactive connection by grabbing the standard in (STDIN) of the container.
    - `/bin/bash`: launches a Bash shell inside our container.
    - `-p 8080:80` : port mapping, from host:8080 to container:80.
    - `-d` : run in background.
    - `-v` : file mapping from host to container.

- `docker images` : list all images.
- `docker ps` : list all containers which are running.
- `docker ps -a` : list all containers.
- `docker stop <containerID>` : stop a container.
- `docker start <containerID>` : start a container.
- `docker restart <containerID>` : restart a container.
- `docker rm <containerID>` : remove a container.

## extenstion usage
- `docker logs <containterID>` : check logs.
- `docker exec -it <containterID> /bin/bash` : enter into a exist container.
- `docker rmi <imageID>` : delete a local image.
- `service docker start` : start docker service.
- `systemctl restart docker` : another way to  (re)start docker service.
- `service docker stop` : stop docker service.
- `systemctl stop docker` : another way to stop docker service.
<!-- - `docker run -it --privileged=true -v /host/path/target:/file/path/within/container <containerID> /bin/bash` -->
- `docker cp <containerId>:/file/path/within/container /host/path/target` : copy from container to host.
- `docker cp /host/path/target <containerId>:/file/path/within/container ` : copy from host to container.
