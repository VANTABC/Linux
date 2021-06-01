#!/bin/bash
	# longest-word : find longest string in a file
	while [ -n "$1" ]; do # 인수가 존재한다면,
		if [ -r "$1" ]; then # 인자에 주어진 파일에 읽기 권한이 있다면
			max_word= # 가장 긴 문자열을 담을 변수	
			max_len=0 # 가장 긴 문자열의 크기
			for i in $(strings $1); do # strings를 이용하여 파일 내 
						 
				len=$(echo $i | wc -c) # 문자열의 길이를 가져옴 
				if (( len > max_len )); then # 문자열의 길이가 현재 								가장 긴 문자열의 								길이보다 길다면
					max_len=$len # 문자열과 문자열의 길이
					max_word=$i  # 업데이트
				fi
			done
			echo "$1: '$max_word' ($max_len characters)" # 가장 긴 										문자열 출력
		fi
		shift # 다음 인수를 사용하기 위해서 shift사용
	done
