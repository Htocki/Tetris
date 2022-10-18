#!/bin/bash

echo -e "\n[Compiling tests for target...]\n"

dir=/modules/target/tests

fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/target/; \
  ./modules/test/;./modules/matrix/" .$dir/delete.pas && \
  echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/target/; \
  ./modules/test/;./modules/matrix/" .$dir/initialize.pas && \
  echo -e ""
