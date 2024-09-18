#!/bin/bash

#Every Command returns an exit status. Range of exit codes from 0 – 255
#0 = Success. Other than 0 is error

ping -c 1 google.com
if test "$?" -eq "0"; then
    echo "google is reachable"
else
    echo "google is not reachable