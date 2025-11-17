#!/bin/bash
op=$1

ab=$([[ "$op" == [+-] ]] && echo 0 || echo 1)
echo "scale=2; $2 $op ${3:-$ab} $op ${4:-$ab} $op ${5:-$ab} $op ${6:-$ab} $op ${7:-$ab} \
$op ${8:-$ab} $op ${9:-$ab} $op ${10:-$ab}" | bc -l
