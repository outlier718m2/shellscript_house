#!/bin/bash

read -p "패치파일을 입력하세요(jar확장자 제외): " patch_name

FILE_LIST = $(jar tf "$patch_name.jar")
OUTPUT_JAR = "${patch_name}_bak.jar"

jar cvf "$OUTPUT_JAR" -C "$(dirname "$patch_name.jar")" $(echo "$FILE_LIST")

echo "JAR 파일(백업)이 생성되었습니다: $OUTPUT_JAR"