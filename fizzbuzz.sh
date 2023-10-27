#!/bin/bash
LIMIT=1000
for COUNT in $(seq 0 $LIMIT)
do
  FIZZ=$(expr $COUNT % 3)
  BUZZ=$(expr $COUNT % 5)
  MSG=$COUNT
  if [ "$FIZZ" -eq 0 ]; then
    MSG="${MSG} Fizz"
  fi
  if [ "$BUZZ" -eq 0 ]; then
    MSG="${MSG} Buzz"
  fi
  echo "$MSG"
done
