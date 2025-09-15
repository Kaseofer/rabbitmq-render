#!/bin/bash

# Esperamos a que RabbitMQ esté listo
rabbitmq-server -detached
sleep 5

# Creamos el usuario
rabbitmqctl add_user fernando superclave123
rabbitmqctl set_user_tags fernando administrator
rabbitmqctl set_permissions -p / fernando ".*" ".*" ".*"

# Dejamos el contenedor corriendo
tail -f /dev/null
