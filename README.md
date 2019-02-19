# COS Development Environment

Get started developing on COS software projects quickly and easily with the COS Development Environment

This repository contains submodule links to all of the projects worked on at COS, and all the docker config you'll need to get up and running with OSF, SHARE, WaterButler, MFR, Lookit and ISP!

Before getting started, be sure that the docker daemon is installed and up and running.

[Getting Started with Docker](https://www.docker.com/get-started)

To get started, clone this repository into any directory you feel comfortable doing so, and run:

```
./install
```

This script will retrieve the latest Docker images, Run migrations, and start and daemonize the containers that the OSF requires to run.

To stop the containers that are started in this script run
```
docker-compose down
```

After the instally script has been run, containers may be run using the docker-compose command directly.
```
docker-compose up web
```

Sometimes additional docker-comopse configuration is needed for particular development tasks that is different to the default configuration. These override configurations may be in submodules, and can be used by the docker-compose command with th `-f` option.

```
docker-compose -f ./waterbutler/docker-compose.yml
```

The docker-compose.yml file is designed to start the dependent containers automatically.

# ISP

To run ISP, use:
```
docker-compose up isp
```
