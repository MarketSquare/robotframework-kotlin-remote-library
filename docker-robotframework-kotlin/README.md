# Docker Robot Framework Kotlin

FYI: This is still in-progress.

When I am finished working on the Dockerfile and other parts, the Docker container will build a simple Kotlin Native application that will take text from the command line and pipe it into a text file. It also uses the same `kotlin-remote-library-server-1.0.jar` and Kotlin keywords code that is used in the desktop version of these Robot Framework Kotlin tests.

## Getting Started (Windows, Mac OSX, or Linux users)
This container will work on any operating system that can run Docker. The only requirements to run this Docker container are...
- Docker CE
  - https://docs.docker.com/v17.12/install/
- docker-compose
  - https://docs.docker.com/v17.12/compose/overview/

The provided `start-robotframework-kotlin-docker-container.sh` script can be used to build and run the Docker container.
```
# Usage example:
$ bash ./start-robotframework-kotlin-docker-container.sh Build-Docker-Container
$ bash ./start-robotframework-kotlin-docker-container.sh Run-Docker-Container
```
