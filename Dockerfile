FROM alpine:3.14.0
LABEL version="1.0"
LABEL maintainer="chocoearly44"

ARG ROOT_PWD_DEFAULT=root

# Password for ssh
ENV ROOT_PASSWORD=$ROOT_PWD_DEFAULT

# Copy to image
COPY entrypoint.sh /

#Install
RUN apk update \
	&& apk add --no-cache --upgrade sudo bash openssh-server rsync \
#Cleaning
	&& rm -rf /var/lib/{cache,log}/ \
	&& rm -rf /var/lib/apt/lists/*.lz4 \	
	&& rm -rf /var/log/* \	
	&& rm -rf /tmp/* /var/tmp/* \	
	&& rm -rf /usr/share/doc/ \
	&& rm -rf /usr/share/man/ \	
	&& rm -rf /var/cache/apk/* \	
	&& chmod +x /entrypoint.sh \
#Ssh
	&& ssh-keygen -A

# Folder Data
VOLUME /data

# SSH Port
EXPOSE 22/tcp

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/sshd", "-D"]