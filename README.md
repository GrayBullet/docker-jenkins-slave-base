docker-jenkins-slave-base
=========================
Jenkins slave Docker image.


Overview
--------
- Ubuntu 14.04
- LANG=ja_JP.UTF-8
- Open SSH Server
- Install default-jdk
- Create `buildagent` account


Using
-----
At first, set `buildagent` password.

```
$ docker pull graybullet/jenkins-slave-base
$ docker run -it graybullet/jenkins-slave-base /bin/bash
root@xxxxxxxx# chpasswd buildagent
Enter new UNIX password: 
Retype new UNIX password: 
passwd: password updated successfully
root@xxxxxxxx# exit
$ docker commit xxxxxxxx jenkins-slave-base
```

Run daemon mode.

```
$ docker -d jenkins-slave-base
```

License
-------
[MIT License](LICENSE)

