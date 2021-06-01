#!/bin/sh
read -p "파일/디렉토리 이름 입력 " file

if [ ! -e $file ];
then
        echo "$file 은 존재하지 않습니다."
        exit 0
fi
list="L S b c d f p"
for c in $list
do
        if [ -$c $file ]
        then
                echo -n "$file은 "
                case $c in
                        'L')
                                echo -n "심볼릭링크";;
                        'S')
                                echo -n "소켓";;
                        'b')
                                echo -n "블록장치";;
                        'c')
                                echo -n "문자장치";;
                        'd')
                                echo -n "디렉토리";;
                        'f')
                                echo -n "보통파일";;
                        'p')
                                echo -n "파이프";;
                esac
                echo "입니다."
        fi
done
