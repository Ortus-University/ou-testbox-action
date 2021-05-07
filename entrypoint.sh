#!/bin/sh -l

echo "Starting the testing script"

echo "Your CFML engine of choice is $1"

pwd
ls / -laR  | grep .cfm
box install --verbose
box server start cfengine=$1 --trace
box testbox run
