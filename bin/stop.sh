#!/bin/bash
#
ps aux|grep 'slicer serve'|grep -v grep|awk  '{print $2}'|xargs kill -9
#ps -ef | grep 'slicer serve' | grep -v grep | tr -s " "|cut -d" " -f3|xargs kill -9

