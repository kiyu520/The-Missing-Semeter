#!/user/bin/env bash


out_putfile="output.log"
count=0
while true; do
	((count++))
	aaa=$?
	echo $aaa >> test.log
	bash /homework/wrong.sh >> $out_putfile 2>&1
	bbb=$?
	if [[ bbb -eq 1 ]] ;then
		break
	fi
done
cat $out_putfile
echo $count

