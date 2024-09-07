#1/bin/bash

set -eu

nginxstatus=$(sudo systemctl status nginx.service | grep -Eo 'running|dead|failed')
nginxlogs=$(journalctl -u nginx.service > ~/errornginx 2>&1)
serveraddress='IP'

nginx_status () {
	if [[ $nginxstatus = 'running' ]]; 
		then
			echo "WEB-server work"
	else
			echo "WEB-server does not work"
			echo "Restart"
			sudo systemctl restart nginx.service
			sleep 2
			if [[ nginxstatus = 'running' ]]; then
				echo "WEB-server work"
			else
				echo "WEB-server does not work"
				sudo systemctl status nginx.service
			fi
			$nginxlogs
			echo $(curl -I $serveraddress | grep OK)
	fi
}

nginx_status
