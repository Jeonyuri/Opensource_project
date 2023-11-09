#!/bin/sh

echo "프로그램을 시작합니다. 명령어를 입력하세요:"
function user()
{
    read usercommand
    echo "함수 안으로 들어 왔음"
    eval "$usercommand"
}

user "$usercommand"
