FROM redis:3.2.12-alpine

ARG REDIS_PORT="6379"

CMD ["redis-server", "--appendfsync", "no", "--save", "", "--appendonly", "no", "--port", "echo ${REDIS_PORT}"]
