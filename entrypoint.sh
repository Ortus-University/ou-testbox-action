#!/bin/sh -l

echo "Starting the testing script"

echo "Your CFML engine of choice is $1"

box install
box server start cfengine=$1
box testbox run outputFile=testbox.xml reporter=junit
echo "done1"
cat /github/workspace/testbox.xml
box testbox run outputformats=json,simple reporter=Console
echo "done2"
cat /github/workspace/testbox.xml
box server log
