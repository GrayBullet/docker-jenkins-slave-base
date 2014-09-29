FROM ubuntu:14.04
MAINTAINER Tomo Masakura <tomo.masakura@gmail.com>

# Install packages and change locale.
RUN echo 'Acquire::http::proxy "http://192.168.0.9:3142/";' > /etc/apt/apt.conf.d/30proxy && apt-get update && apt-get install -y default-jdk openssh-server language-pack-ja-base && update-locale LANG=ja_JP.UTF-8 && rm -rf /var/lib/apt/lists /var/cache/apt /etc/apt/apt.conf.d/30proxy
RUN mkdir /var/run/sshd

# Create build agent account.
RUN adduser --disabled-password --gecos 'Jenkins slave build agent'  buildagent

EXPOSE 22

CMD /usr/sbin/sshd -D && tail -f /dev/null

