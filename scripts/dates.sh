#!/usr/bin/env bash


printf $date

datefmt='%Y/%m/%d %H:%M:%S'

printf 'the date is %($datefmt)T\n'