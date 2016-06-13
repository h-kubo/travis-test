#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp*
  exit 1
}
 
echo 12 >$tmpans
./comFactor 12 36 >$tmpout || ERROR_EXIT "TEST1-1"
diff $tmpans $tmpout || ERROR_EXIT "TEST1-2"

echo OK
rm -f $temp*
exit 0

