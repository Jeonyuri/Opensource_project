#!/bin/bash


db_file="DB.txt"

if [ ! -f "$db_file" ]; then
    echo "DB 파일이 존재하지 않습니다."
    exit 1
fi

read -p "검색할 팀원의 이름을 입력하세요: " search_name


result=$(grep "^$search_name:" "$db_file")

if [ -n "$result" ]; then
    echo "검색 결과:"
    echo "$result"
else
    echo "검색 결과가 없습니다."
fi

