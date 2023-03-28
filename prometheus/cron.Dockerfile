FROM alpine:latest 

RUN apk add --no-cache curl busybox-extras

COPY cron_filesize /etc/cron.d/cron_filesize
COPY . /app
RUN chmod 0644 /etc/cron.d/cron_filesize
RUN crontab /etc/cron.d/cron_filesize
CMD ["crond", "-b", "&&", "crond", "-f"]