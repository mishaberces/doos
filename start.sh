DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"

./stop.sh
echo =====START======
ulimit -n 5000

instance_id=dos_bombardier

filter="instance.id=$instance_id"
#nohup ./loop.sh ./lilh_linux_amd64 -c=300 "https://tword.ru//site/get-bombardier?count=2&addKey=1" instance.id=$instance_id >> doss.log 2>&1 & echo ok
#sleep 2m 30s
#nohup ./loop.sh ./lilh_linux_amd64 -c=300 "https://tword.ru//site/get-bombardier?count=2&addKey=1" instance.id=$instance_id >> doss2.log1 2>&1 & echo ok
printf "\n"
ps -v | grep $filter
printf "\n"  