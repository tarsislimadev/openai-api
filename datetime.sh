#!/usr/bin/sh

# yyyy-MM-dd HH:mm:ss

year=$( date +%Y )

month=$( date +%m )

day=$( date +%d )

date="${year}-${month}-${day}"

hour=$( date +%H )

minute=$( date +%M )

second=$( date +%S )

time="${hour}:${minute}:${second}"

timestamp="${date} ${time}"

datetime="${year}${month}${day}${hour}${minute}${second}"
