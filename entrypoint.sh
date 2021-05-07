#!/bin/sh -l

echo "Starting the testing script"

echo "Your CFML engine of choice is $1"

box install --verbose
box server start cfengine=$1
box testbox run outputFile=testbox.xml reporter=junit
echo "done"
box testbox run outputFile=testbox.xml reporter=junit
echo "done again"
less /github/workspace/testbox.xml
box server log
