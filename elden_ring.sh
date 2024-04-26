#! /bin/zsh

echo "Welcome tarnished. Please select your Avatar:
1- Samurai
2- Prisioner
3- Prophet"

read Avatar

#switch case statement
case $Avatar in 
  1)
    type="samurai"
    hp=10
    attack=20
    ;;
  2)
    type="Prisioner"
    hp=20
    attack=4
    ;;
  3)
    type="Prophet"
    hp=30
    attack=4
    ;;
esac

echo "You chosen the $type Avatar. Your HP is $hp and your attack is $attack."

#First Beast Battle

beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches. Prepare to battle. Pick a number b/w 0-1.(0/1)"

read tarnished

if [[ $beast == $tarnished ]]; then
  echo "Beast VANQUISHED! Congrats fellow tarnished"
else
  echo "You Died"
  exit 1
fi

#Battle with Margit after victory over first beast
sleep 2

echo "Boss battle. Get scared. It's Margit. Pick a number b/w 0-9. (0-9)"

read tarnished

beast=$(( $RANDOM % 10 ))

#Adding cheatcode in condition statement using or and adding coffee
#we can also create nested if

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
  echo " Beast VANQUISHED!"
elif [[ $USER == "kali" ]]; then
  echo "Hey ,kali always wins. You VANQUISHED the beast."

else
  echo "You Died"
fi



