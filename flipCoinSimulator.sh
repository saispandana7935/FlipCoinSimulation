#! /bin/bash -x
isHeads=1
isTails=0
headCount=0
tailCount=0

while [ true ]
do
	flipCoin=$((RANDOM%2))
	case $flipCoin in
		$isHeads)
			echo "Heads"
			((headCount++))
			if [ $headCount -eq 21 ]
			then
				break
			fi
			 ;;
		$isTails)
			echo "Tails"
			((tailCount++))
			if [ $tailCount -eq 21 ]
			then
				break
			fi
			;;
	esac
done
echo "Head_Count :" $headCount
echo "Tail_Count :" $tailCount
if [ $headCount -gt $tailCount ]
then
	echo "Heads win by " $(($headCount-$tailCount))
elif [ $tailCount -gt $headCount ]
then
	echo "Tails win by " $(($tailCount-$headCount))
else
	echo "Tie"
	while [ $(($headCount-$tailCount)) -lt 2 || $(($tailCount-$headCount)) -lt 2 ]
	do
		 flipCoin=$((RANDOM%2))
   case $flipCoin in
      $isHeads)
         echo "Heads"
         ((headCount++))
			;;
      $isTails)
         echo "Tails"
         ((tailCount++))
         ;;
	esac
	done

fi
