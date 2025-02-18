#!/bin/bash

# 디렉토리 삭제 카운트를 위한 변수 초기화
cnt=0

# 삭제할 디렉토리 목록
pre_dir="/xflow/source/rmstran/2023/"
directories=(
    "${pre_dir}7007543"
    "${pre_dir}7007055"
    "${pre_dir}9007652"
    "${pre_dir}7007608"
    "${pre_dir}7007617"
    "${pre_dir}9007649"
    "${pre_dir}7007610"
    "${pre_dir}8001001"
    "${pre_dir}9007633"
    "${pre_dir}7007630"
    "${pre_dir}7007138"
    "${pre_dir}7007616"
    "${pre_dir}7007665"
    "${pre_dir}7007057"
    "${pre_dir}7007054"
    "${pre_dir}7007063"
    "${pre_dir}9007592"
    "${pre_dir}7007609"
    "${pre_dir}9007566"
    "${pre_dir}9007576"
    "${pre_dir}7007627"
    "${pre_dir}9007625"
    "${pre_dir}9007708"
    "${pre_dir}7007389"
    "${pre_dir}9007634"
    "${pre_dir}9007671"
    "${pre_dir}9007630"
    "${pre_dir}9007644"
    "${pre_dir}7007083"
    "${pre_dir}7007636"
    "${pre_dir}9007661"
    "${pre_dir}7007496"
    "${pre_dir}7007623"
    "${pre_dir}7007560"
)

# 디렉토리 삭제
for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        echo "Deleting directory: $dir"
        rm -rf "$dir"  # 디렉토리 삭제
        cnt=$((cnt+1))  # 삭제된 디렉토리 수 증가
    else
        echo "Directory does not exist: $dir"
    fi
done

# 삭제된 디렉토리 수 출력
echo "삭제 건수: $cnt"
