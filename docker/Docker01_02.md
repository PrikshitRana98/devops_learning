<!-- Port Mapping -->

In Docker container  is a virtual env. in which we have: 
. code 
.dependency (OS, nginx)
. Commands
. Port 80

# Why we do port mapping when run nginx in docker

Port mapping is needed for Nginx in Docker because containers are like sealed boxes—they can't be reached from outside without a special door.

Why Containers Hide Ports
Docker gives each container its own private network space. Nginx runs inside on port 80, but that's invisible to your computer or the internet by default. This keeps things safe and avoids port clashes.

How to Open the Door
Use -p 8080:80 when starting the container (like docker run -p 8080:80 nginx). This links your computer's port 8080 to the container's port 80, letting you visit http://localhost:80 to see Nginx.

# let make a container of hello_world -->

docker run hello_world

