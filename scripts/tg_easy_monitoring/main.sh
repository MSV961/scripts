#1/bin/bash

set -eu

# Variables
nginxstatus=$(sudo systemctl status nginx.service | grep -Eo 'running|dead|failed')
nginxlogs=$(journalctl -u nginx.service > ~/errornginx 2>&1)
serveraddress='79.174.12.165'
tg="/root/scripts/telegram.sh"


main () {
        if [[ $nginxstatus = 'running' ]];
                then
                        $tg "WEB-server works" > /dev/null
        else
                        $tg "WEB-server does not work" > /dev/null
                        sudo systemctl restart nginx.service
                        $nginxlogs
        fi
}

main