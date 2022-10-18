#!/bin/bash

echo -e "\n[Running tests for field...]\n"
./modules/field/tests/delete_filled_lines
./modules/field/tests/delete_line
./modules/field/tests/initialize
./modules/field/tests/is_filled
./modules/field/tests/is_line_filled
