#!/bin/sh -l

echo "Starting the testing script"

echo "Your CFML engine of choice is $1"

box install
box server start cfengine=$1
box testbox run outputFile=testbox.xml reporter=junit
echo "done"
box testbox run outputFile=testbox.xml reporter=junit
echo "done again"
echo "what is this" 
box server log
