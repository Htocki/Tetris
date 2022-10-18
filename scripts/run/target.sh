#!/bin/bash

echo -e "\n[Running tests for target...]\n"
dir=/modules/target/tests
.$dir/delete
.$dir/initialize
