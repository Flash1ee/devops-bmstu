.PHONY: nginx
nginx:
	COMPOSE_PROFILE=nginx docker-compose up -d --remove-orphans

.PHONY: nginx-stop
nginx-stop:
	COMPOSE_PROFILE=nginx docker-compose stop

.PHONY: prometheus
prometheus:
	COMPOSE_PROFILE=prometheus docker-compose up -d

.PHONY: prometheus-stop
prometheus-stop:
	COMPOSE_PROFILE=prometheus docker-compose stop

.PHONY: exporters
exporters:
	COMPOSE_PROFILE=nginx-exporter,size-dir-exporter,alertmanager docker-compose up

.PHONY: exporters-stop
exporters-stop:
	COMPOSE_PROFILE=nginx-exporter,size-dir-exporter,alertmanager docker-compose stop
