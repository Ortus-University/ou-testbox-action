#!/bin/sh -l

echo "Starting the testing script"

echo "Your CFML engine of choice is $1"

box install
box server start cfengine=$1
box testbox run outputformats=json,simple reporter=JSON
echo "done1"
echo "doneFinal"
