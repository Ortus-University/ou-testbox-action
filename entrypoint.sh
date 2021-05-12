#!/bin/sh -l

echo "Starting the testing script"

echo "Your CFML engine of choice is $1"

box install
box server set web.http.port=8080
box package set testbox.runner="http://localhost:8080/tests/runner.cfm"
box server start cfengine=$1
box testbox run outputformats=json,simple reporter=json
echo "done1"
box !curl http://127.0.0.1:8080/tests/runner.cfm?&recurse=true&reporter=json&verbose=false
echo "doneFinal"
