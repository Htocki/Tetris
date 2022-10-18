#!/bin/bash

echo -e "\n[Running tests for target...]\n"

./modules/target/tests/delete
./modules/target/tests/initialize
