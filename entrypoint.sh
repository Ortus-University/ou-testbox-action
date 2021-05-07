#!/bin/sh -l

echo "Starting the testing script"

echo "Your CFML engine of choice is $1"

pwd
ls -laR
box install --verbose
box server start cfengine=$1 --trace
box testbox run outputFile=testbox.xml reporter=junit
