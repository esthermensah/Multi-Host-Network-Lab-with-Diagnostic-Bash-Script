#!/bin/bash

# target devices 
TARGETS=("192.168.56.102" "192.168.56.103" )

# Destination of log file 
LOGFILE="network_diagnostic.log"

# This clears the old log file and starts afresh

echo "Network Diagnostic Report - $(date)" > $LOGFILE
echo "----------------------------------------" >> $LOGFILE


for IP in "${TARGETS[@]}"; do 
    echo "Testing $IP..." | tee -a "$LOGFILE"

    echo "Ping Test:" | tee -a "$LOGFILE"
    ping -c 3 "$IP" >> "$LOGFILE" 2>&1
    echo "-----------------------------" >> "$LOGFILE"

    echo "Traceroute :" | tee -a "$LOGFILE"
    traceroute -m 10 "$IP" >> "$LOGFILE" 2>&1
    echo "-----------------------------" >> "$LOGFILE"

    echo "DNS LOOKUP :" | tee -a "$LOGFILE"
    nslookup "$IP" >> "$LOGFILE" 2>&1
    echo "-----------------------------" >> "$LOGFILE"
done

echo "Diagnostic completed. Results saved to $LOGFILE"