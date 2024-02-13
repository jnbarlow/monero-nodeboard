FROM ubuntu:latest
RUN apt-get update && apt-get install -y npm git supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisords.conf
WORKDIR /app
COPY app .
RUN mkdir blockchain
RUN git clone --branch v1.1.0 https://github.com/jnbarlow/monero-dashboard.git
EXPOSE 3000
EXPOSE 18081
EXPOSE 18089
CMD ["/usr/bin/supervisord"]
