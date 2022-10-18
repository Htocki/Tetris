#!/bin/bash

echo -e "\n[Compiling tests for matrix...]\n"

dir=/modules/matrix/tests

fpc -vewn -Fu"./modules/test/;./modules/matrix/" \
  .$dir/clear.pas && echo -e ""
fpc -vewn -Fu"./modules/test/;./modules/matrix/" \
  .$dir/copy.pas && echo -e ""
fpc -vewn -Fu"./modules/test/;./modules/matrix/" \
  .$dir/fill.pas && echo -e ""
fpc -vewn -Fu"./modules/test/;./modules/matrix/" \
  .$dir/is_equal.pas && echo -e ""
