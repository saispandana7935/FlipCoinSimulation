#! /bin/bash -x
read -p "Enter Number Of Flips" Num
isHeads=1
isTails=0
headCount=0
tailCount=0

for((i=1; i<=$Num; i++))
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
echo "Head_Count :" $headCount
echo "Tail_Count :" $tailCount
