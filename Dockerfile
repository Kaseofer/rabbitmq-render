FROM rabbitmq:3-management

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY init.sh /init.sh

RUN chmod +x /init.sh

CMD ["/init.sh"]
