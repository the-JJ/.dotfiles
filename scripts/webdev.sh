#!/bin/bash

start() {
	sudo systemctl start mysql
	sudo systemctl start php5.6-fpm
	sudo systemctl start php7.1-fpm
	sudo systemctl start apache2
	sudo systemctl start nginx
	sudo systemctl start memcached
}

stop() {
	sudo systemctl stop mysql
	sudo systemctl stop php5.6-fpm
	sudo systemctl stop php7.1-fpm
	sudo systemctl stop apache2
	sudo systemctl stop nginx
	sudo systemctl stop memcached
}
case "$1" in
  start)
	start
	;;
  stop)
	stop
	;;
  *)
	echo $"Usage: $0 {start|stop}"
	exit 1
esac

exit 0

