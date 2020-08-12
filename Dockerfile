FROM redis
MAINTAINER towfeeq fayaz <towfeeqfayaz11@gmail.com>
RUN apt update
COPY redis.conf /etc/redis/redis.conf 
RUN echo "successfull"
ENTRYPOINT [ "redis-server","/etc/redis/redis.conf" ]

