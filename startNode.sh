#! /bin/bash
for i  in {0..2};do
 	build/LogCabin -c ./config/logcabin-$i.conf -l ./log/node-$i.log &
	echo "start Node $i"
done
