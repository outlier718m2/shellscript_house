#!/bin/bash

# 패치파일 이름을 입력 받음
read -p "패치파일을 입력하세요(jar확장자 제외): " patch_name

# 패치파일이 zip 파일인지 확인
if file "$patch_name.zip" | grep -q "Zip archive data"; then
    C_PATCH_NAME="$patch_name.zip"
else
    C_PATCH_NAME="$patch_name.jar"
    exit 1
fi

# jar 파일 내의 파일 목록을 가져오고 디렉토리만 제외
FILE_LIST=$(jar tf "$C_PATCH_NAME" | grep -v '/$')

# 출력할 새로운 JAR 파일 이름 설정
OUTPUT_JAR="${patch_name}_bak.jar"

# JAR 파일을 새로 생성
jar cvf "$OUTPUT_JAR" -C "$(dirname "$C_PATCH_NAME")" $FILE_LIST

# 완료 메시지 출력
echo "JAR 파일(백업)이 생성되었습니다: $OUTPUT_JAR"
