#! /bin/bash

#TIME_STAMP=$(date)


START_TIME=$(date +%s)  #if we add %s it gives the time in seconds
echo "Script start time is at : $START_TIME"


sleep 100

END_TIME=$(date +%s)
echo "Script end time is at : $END_TIME"

Total_Time=(($END_TIME-$START_TIME))
echo "Script ececuted in : $Total_Time"







