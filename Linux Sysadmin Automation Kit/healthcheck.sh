#!/bin/bash

LOGFILE="health_report.log"

echo "===================================" >> $LOGFILE
echo "SERVER HEALTH REPORT" >> $LOGFILE
echo "Generated On: $(date)" >> $LOGFILE
echo "===================================" >> $LOGFILE

echo "" >> $LOGFILE

echo "DISK USAGE" >> $LOGFILE
df -h >> $LOGFILE

echo "" >> $LOGFILE

echo "RUNNING PROCESSES" >> $LOGFILE
tasklist >> $LOGFILE

echo "" >> $LOGFILE

echo "HEALTH CHECK COMPLETED" >> $LOGFILE
echo "" >> $LOGFILE