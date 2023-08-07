#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace2021" ]; then
    wget https://github.com/zjcpllc/autoBestTrace/blob/master/besttrace2021
    # unzip besttrace4linux.zip
    chmod +x besttrace2021
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(219.141.136.10 202.96.199.132 202.96.128.86 123.123.123.123 210.22.70.3 210.21.4.130 211.136.28.228 211.136.112.50 120.196.212.25)
ip_addr=(北京电信 上海电信 广州电信 北京联通 上海联通 广州联通 北京移动 上海移动 广州移动)
# ip_len=${#ip_list[@]}

for i in {0..9}
do
	echo ${ip_addr[$i]}
	./besttrace2021 -q 1 -g cn ${ip_list[$i]}
	next
done
