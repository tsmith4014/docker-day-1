# Docker Hub Images and Basic Container Commands

## Working with Ubuntu Image

- **Download and Run Ubuntu OS with Interactive Shell**

  ```bash
  docker run -it ubuntu
  ```

- **Display Ubuntu OS Info in Container**

  ```bash
  cat /etc/os-release
  ```

- **Update and Upgrade OS Packages on Ubuntu Container**

  ```bash
  apt-get update && apt-get upgrade -y
  ```

- **Exit Ubuntu Container and Return to Host Shell**

  ```bash
  exit
  ```

## Nginx on DockerHub

- **Run Nginx as Container with Interactive Shell**

  ```bash
  docker run -p 8080:80 -it nginx
  ```

## Basic Container Operations

- **Check Docker Service Status**

  ```bash
  sudo systemctl status docker
  ```

- **Access Docker Help Documentation**

  ```bash
  docker help | less
  ```

- **Detailed Help for Specific Docker Command**

  ```bash
  docker run --help | less
  ```

- **List All Containers and Explain Properties**

  ```bash
  docker ps -a
  ```

## Busybox Container Operations

- **Run Busybox Container with Interactive Shell**

  ```bash
  docker run -it --name busybox-1 busybox
  ```

- **Create and View a File Inside Busybox Container**

  ```bash
  touch helloworld.txt && echo "hello world" > helloworld.txt
  cat helloworld.txt
  exit
  ```

- **Restart and Attach to Busybox Container**

  ```bash
  docker start busybox-1 && docker attach busybox-1
  ```

- **Inspect Busybox Container**

  ```bash
  docker inspect busybox-1 | less
  ```

## Additional Docker Hub Commands

### Image and Container Management

- **Pull a Specific Version of an Image**

  ```bash
  docker pull ubuntu:20.04
  ```

- **Remove a Container by ID or Name**

  ```bash
  docker rm <CONTAINER_ID_OR_NAME>
  ```

### Cleanup Commands

- **Remove All Unused Images, Containers, Volumes, and Networks**

  ```bash
  docker system prune -af --volumes --filter "until=24h" --filter "label!=keep" --filter "dangling=false" --filter "reference!=*/*:*" --filter "reference!=<none>"
  ```

---

> **Note:** The `-it` flag in the `docker run` command opens an interactive terminal to the container, and the `-p` flag publishes the container's port to the host.

---

---

---

# Docker Hub Images

## Working with Ubuntu Image

- **Download Docker Image `ubuntu`**

  - This command defaults to `ubuntu:latest`.
  - Explain image tags on Docker Hub (default is `latest`).
  - Show `ubuntu` repo on Docker Hub and which version the `latest` tag corresponds to (`20.04`).

  ```bash
  docker image pull ubuntu
  docker image ls
  ```

- **Run Ubuntu as Container with Interactive Shell**

  ```bash
  docker run -it ubuntu
  ```

- **Display Ubuntu OS Info in Container**

  - Shows `VERSION="20.04 LTS (Focal Fossa)"`.
  - Note: The `latest` tag shows release `20.04` as in Docker Hub.
  - Then, exit the container.

  ```bash
  cat /etc/os-release
  exit
  ```

## Nginx on DockerHub

- **Run Nginx as Container with Interactive Shell**

  ```bash
  docker run -p 8080:80 nginx
  ```

## Additional Docker Hub Commands

### Container Management

- **Stop a Container**

  ```bash
  docker stop <container_id>
  ```

- **Remove a Container**

  ```bash
  docker rm <container_id>
  ```

- **Inspect an Image**

  ```bash
  docker inspect ubuntu
  ```

- **Run a Command in a Running Container**

  ```bash
  docker exec -it <container_id> /bin/bash
  ```

- **View Logs of a Container**

  ```bash
  docker logs <container_id>
  ```

### Image Management

- **Pull a Specific Version of an Image**

  ```bash
  docker pull ubuntu:20.04
  ```

- **Push an Image to Docker Hub**

  ```bash
  docker push <image_name>
  ```

- **Remove an Image from Local System**

  ```bash
  docker rmi <image_name>
  ```

### Cleanup Commands

- **Remove Unused Objects**

  ```bash
  docker system prune
  ```

- **Remove Unused Images**

  ```bash
  docker image prune
  ```

- **Remove Unused Containers**

  ```bash
  docker container prune
  ```

- **Remove Unused Volumes**

  ```bash
  docker volume prune
  ```

- **Remove Unused Networks**

  ```bash
  docker network prune
  ```

- **Remove All Unused Images, Containers, Volumes, and Networks**

  ```bash
  docker system prune -a
  ```

- **Force Remove All Unused Resources without Confirmation**

  ```bash
  docker system prune -af
  ```

- **Force Remove All Unused Resources including Volumes**

  ```bash
  docker system prune -af --volumes
  ```

- **Advanced Prune with Filters**

  - Remove resources unused for 24 hours, keep certain labels, remove non-dangling images, and specific references.

  ```bash
  docker system prune -af --volumes --filter "until=24h" --filter "label!=keep" --filter "dangling=false" --filter "reference!=*/*:*" --filter "reference!=<none>"
  ```

---

> **Note:** The `-it` flag in the `docker run` command opens an interactive terminal to the container, and the `-p` flag publishes the container's port to the host.

---
