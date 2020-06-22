#!/bin/bash -x


read -p  "enter the list value" str
echo $str | awk '{do printf "%s"(NF>1?FS:RS),$NF;while(--NF)}'

