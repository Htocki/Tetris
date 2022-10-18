#!/bin/bash

echo -e "\n[Running tests for matrix...]\n"
dir=/modules/matrix/tests
.$dir/clear
.$dir/copy
.$dir/fill
.$dir/is_equal
