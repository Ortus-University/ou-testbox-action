#!/bin/sh -l

echo "Starting the testing script"

echo "Your CFML engine of choice is $1"

box install --verbose production=false
box server start cfengine=$1 --trace
box testbox run outputFile=testbox.xml reporter=junit
Ls -lar
