#!/bin/bash

instance_id=dos_bombardier

filter="instance.id=$instance_id"

pids=$(ps aux | grep php | grep $filter | awk '{print $2}')


echo =====STOP====== $pids

if [ ! -z "$pids" ]

then
        printf "\nPids to kill:\n$pids\n\n"
        	echo $pids | xargs kill -9
fi
