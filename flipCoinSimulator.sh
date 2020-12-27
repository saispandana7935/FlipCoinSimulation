#! /bin/bash -x

isHeads=1
isTails=0
flipCoin=$((RANDOM%2))
case $flipCoin in
	$isHeads)
		echo "Heads" ;;
	$isTails)
		echo "Tails" ;;
esac
