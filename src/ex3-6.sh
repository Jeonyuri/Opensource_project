#!/bin/bash

read -p "폴더 이름을 입력하세요: " folder_name

if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
    echo "폴더 '$folder_name'을 생성했습니다."
fi


cd "$folder_name"
for i in {1..5}; do
    touch "file${i}.txt"
done


tar -czvf "${folder_name}.tar.gz" *

echo "파일을 압축했습니다: ${folder_name}.tar.gz"


mkdir "${folder_name}_unzipped"
tar -xzvf "${folder_name}.tar.gz" -C "${folder_name}_unzipped"

echo "압축을 해제했습니다: ${folder_name}_unzipped"
