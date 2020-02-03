#!/bin/bash
#Monitor specific services then start it automatically
#written by Osama Mustafa
#Crontab : */5 * * * * /path/monitor_services.sh > /dev/null 2>&1

services_name=zabbix #Change services name here

UP=$(pgrep $services_name | wc -l);
if [ "$UP" -eq 0 ];
then
        echo "MySQL is down.";
        #sudo service zabbix start #you can start services by uncomment this here

else
        echo "Services is up.";
fi
