# COS Development Environment

Get started developing on COS software projects quickly and easily with the COS Development Environment

This repository contains submodule links to all of the projects worked on at COS, and all the docker config you'll need to get up and running with OSF, SHARE, WaterButler, MFR, Lookit and ISP!

<<<<<<< HEAD
Before getting started, be sure that the docker daemon is installed and up and running.

[Getting Started with Docker](https://www.docker.com/get-started)

To get started, clone this repository into any directory you feel comfortable doing so, and run:

```
./install
```

This script will retrieve the latest Docker images, Run migrations, and start and daemonize the containers that the OSF requires to run.
=======
To get started, clone this repository into any directory you feel comfortable doing so.

[Cloning a repository](https://www.wikihow.com/Clone-a-Repository-on-Github)
[What's a directory?](https://en.wikipedia.org/wiki/Directory_structure)

If you're not familiar with GitHub, also check out [GitHub's introduction to itself](https://guides.github.com/activities/hello-world/).

The repositories and branches these submodules are tied to are specified in the `.gitmodules` file.


To fetch the repositories in the state they were last committed to CDE,  run

```
git submodule update
```

This clones all the submodules to the commit that the cde repository is tied to. CDE does not currently make useof the commit that the submodule is tied to, Any new commits to CDE should update all submodules to the latest commit on their respective branches. Likewise, any commits  to submodule repositories should  also make a commit in CDE.

> I'll give 1000 Dogecoin to anyone that can automate this.

This repository  also ties the submodules to a branch. To fetch the latest commit off  that branch, run:

```
git submodule update --remote
```


> Note:  these are  all currently set to `next`, and

[I dont have yarn](http://yarnpkg.com)
>>>>>>> 97d2592ca8149dd52258f81587d3dbc25e662d77

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
