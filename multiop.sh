echo "Please enter 2 numbers: "
read a
read b

resadd=$(echo " $a + $b" | bc)
ressub=$(echo $a-$b|bc)
resmul=$(echo $a\*$b|bc)
if [ $b-eq"0" ]
then
        echo "division will not be possible with inputted numbers"
else
	resdiv=$(echo "scale=2; $a/$b"|bc)
fi
echo "Added = $resadd"
echo "Subtracted = $ressub"
echo "Multiplied = $resmul"
echo "Divided = $resdiv"
echo "$resadd">results.txt
echo "$ressub">>results.txt
echo "$resmul">>results.txt
echo "$resdiv">>results.txt
