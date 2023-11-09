#!/bin/bash

read num

if [ -z "$num" ]; then
    while true; do
        echo "hello world"
    done
else
    for ((i=0; i<num; i++)); do
        echo "hello world"
    done
fi
