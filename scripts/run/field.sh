#!/bin/bash

echo -e "\n[Running tests for field...]\n"
dir=/modules/field/tests
.$dir/delete_filled_lines
.$dir/delete_line
.$dir/initialize
.$dir/is_filled
.$dir/is_line_filled
