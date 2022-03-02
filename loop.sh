while true
do
  date "+%Y-%m-%d %H:%M:%S"
      echo run
      timeout  -s 9 5m $@
      sleep 1
done