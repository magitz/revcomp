#!/bin/bash

name=`basename $1 .seq`

grep \> $1 > \
$name.reformatted

grep -v \> $1 | tr -d '\n' \
| tr '[ATCG]' '[TAGC]' \
| rev \
>> $name.reformatted 

