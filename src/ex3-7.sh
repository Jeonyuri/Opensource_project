#!/bin/bash

# 폴더 이름 입력 받기
read -p "폴더 이름을 입력하세요: " folder_name

# 폴더 생성
if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
    echo "폴더 '$folder_name'을 생성했습니다."
fi

# 폴더로 이동
cd "$folder_name"

# 5개 이상의 파일 생성
for i in {1..5}; do
    touch "file${i}.txt"
done

# 파일 이름대로 하위 폴더 생성하고 파일을 해당 폴더로 링크
for file in *; do
    if [ -f "$file" ]; then
        folder="${file%.*}"  # 파일 이름에서 확장자 제거
        mkdir -p "$folder"   # 하위 폴더 생성
        ln -s "../$file" "$folder/$file"  # 파일을 링크
    fi
done

echo "파일을 생성하고 폴더에 링크했습니다."

