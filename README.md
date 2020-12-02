# **Docker Rails**

The **Dockerfile** contains ruleset that docker will follow (found on [docker hub](https://hub.docker.com/)). We pull a pre-built ruby setup in this case. 

The **docker-compose.yml** file specifies which version of docker-compose we are using (3.8 is latest as of this time, see versions [here](https://docs.docker.com/compose/compose-file/)). Although we have just one service, *ruby_dev*, docker-compose.yml can be used to tie multiple services together, such as a rails server and a postgreSQL server. We also use "volumes" here to specify the files we want to keep locally after quitting/deleting Docker (in our case, the '/home/app' directory).

<br/>

### **To build from command line:**

    docker-compose build

See [Docker build reference](https://docs.docker.com/engine/reference/builder/)
This can also be done from within VSCode with the Docker extension.

<br/>

### **To start a bash terminal with this rails environment from command line:**

    docker-compose run --rm --service-ports ruby_dev

<ins>Note</ins>:
"--rm" will remove the container after using it.
"--service-ports" specifies using port 3000 in the container

<br/>

### **From this new bash terminal, a new rails app can be generated!**

    rails new app && cd app
    bundle update && bundle install
    rails s -p $PORT -b 0.0.0.0


<ins>Note:</ins> use `-b 0.0.0.0` to see app on local machine

<br/>

Stop server with ctrl-d, and exit the terminal when finished. 

<br/>


**Important!**

To save space, remove development environment, all the setup, and images when done:

    docker-compose down
