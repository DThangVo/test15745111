#!/bin/bash

tmp=/tmp/$$
echo $tmp

ERROR_EXIT(){
    echo "$1" >&2
    rm -f $tmp-*
    echo NG
    exit 1
}

#######
# TEST 1 : 正常の場合
######
echo 10 > $tmp-ans
./15745111.bash 100 10 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

#######
# TEST 2：正常の場合
######
echo 200 > $tmp-ans
./15745111.bash 3000 400 > $tmp-out || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"

#######
# TEST 3：異常の場合
######
echo 200 > $tmp-ans
./15745111.bash 100 400 > $tmp-out || ERROR_EXIT "TEST3-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST3-2"

rm -f $tmp-*
echo OK
exit 0
