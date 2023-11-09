#!/bin/sh

read weight height_cm

height=$(echo "scale=2; $height_cm / 100" | bc)

bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

if (( $(echo "$bmi >= 18.5" | bc -l) )) && (( $(echo "$bmi < 23" | bc -l) )); then
    echo "정상체중입니다."
elif (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "저체중입니다."
else
    echo "과체중입니다."
fi

