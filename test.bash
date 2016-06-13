#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp_*
  exit 1
}
 
echo '12' > $tmp_ans
./comFactor 12 36 > $tmp_out || ERROR_EXIT "TEST1-1"
diff $tmp_ans $tmp_out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $temp*
exit 0

