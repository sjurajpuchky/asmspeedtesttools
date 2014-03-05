#!/bin/bash

samples=1000;

rm -f *.result
rm -f *.avg
rm -f .tmp
n=0;
while [ $n -lt $samples ];
do
  n=`expr $n + 1`;
  x=$n;
  sync && wait
  nice -n -20 ./speedtest > .tmp
  sync && wait
  echo -en "Samples $samples/$n\r";
  cat .tmp|cut -d: -f1|while read linstruction
   do
    echo -n "$x," >> "$linstruction.result";
    cat .tmp|grep -e "^$linstruction:[0-9]\+"|cut -d: -f2 >> "$linstruction.result";
   done
done
echo
ls *.result|while read f
do
name=`echo "$f"|cut -d\. -f1`;
 t=0;
 n=0;
 avg=0;
 cat "$f"|while read l
 do
  n=`expr $n + 1`;
  v=`echo "$l"|cut -d, -f2`;
  if [ $v -gt 0 ]; then
   t=`expr $t + $v`;
   avg=`expr $t / $n`;
   echo -en "AVG $name $avg with $n samples\r";
   echo "$avg" > "$name.avg";
  fi
 done
 echo
done
