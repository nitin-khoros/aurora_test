#!/bin/bash

echo "This is Script 1"
VAR1=one
touch envFile
echo VAR1=one >> envFile
echo "***from shell script"
echo "VAR1 value is $VAR1"
echo "***from shell script"
