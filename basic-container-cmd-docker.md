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
