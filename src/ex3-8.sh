#!/bin/bash


db_file="DB.txt"

if [ ! -f "$db_file" ]; then
    touch "$db_file"
fi

while true; do
    clear
    echo "1. 새로운 항목 추가"
    echo "2. DB 파일 재작성"
    echo "3. 종료"
    
    read -p "옵션을 선택하세요 (1/2/3): " option
    
    case "$option" in
        1)
            read -p "이름: " name
            read -p "생일 또는 전화번호: " info
            echo "$name: $info" >> "$db_file"
            echo "항목이 추가되었습니다."
            ;;
        2)
            > "$db_file"
            echo "DB 파일이 재작성되었습니다."
            ;;
        3)
            echo "프로그램을 종료합니다."
            exit 0
            ;;
        *)
            echo "올바른 옵션을 선택하세요."
            ;;
    esac

    read -p "계속하려면 엔터를 누르세요."
done

