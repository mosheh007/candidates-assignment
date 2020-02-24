#!/bin/bash
#add fix to exercise6-fix here
dest=${@:$#} 
source=${*%${!#}}
count=0
host=`hostname`
if [ "$host" == "server1" ] ; then
   remove_server="server2"
else
   remove_server="server1"
fi

for file_name in $source
do
    scp $file_name $remove_server:$dest
    count=$(( $count+$(stat -c %s $file_name) ))
done
echo $count
