#!/bin/bash

echo -e "\n[Running tests for matrix...]\n"

./modules/matrix/tests/clear
./modules/matrix/tests/copy
./modules/matrix/tests/fill
./modules/matrix/tests/is_equal
