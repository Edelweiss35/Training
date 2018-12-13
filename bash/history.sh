#!/bin/bash

echo "How many history items should I save?"
read num
echo "Saving $num items"

date='date'
history $num | tee $date.notes
