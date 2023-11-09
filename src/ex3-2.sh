#!/bin/bash

read num1 operator num2

if [ "$operator" = "+" ]; then
    result=$(($num1 + $num2))
    echo "$result"
elif [ "$operator" = "-" ]; then
    result=$(($num1 - $num2))
    echo "$result"
else
    echo "잘못된 연산자입니다. + 또는 - 만 입력하세요."
fi
