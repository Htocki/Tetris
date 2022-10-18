#!/bin/bash

echo -e "\n[Compiling tests for matrix...]\n"

fpc -vewn -Fu"./modules/test/;./modules/matrix/" \
  ./modules/matrix/tests/clear.pas && echo -e ""
fpc -vewn -Fu"./modules/test/;./modules/matrix/" \
  ./modules/matrix/tests/copy.pas && echo -e ""
fpc -vewn -Fu"./modules/test/;./modules/matrix/" \
  ./modules/matrix/tests/fill.pas && echo -e ""
fpc -vewn -Fu"./modules/test/;./modules/matrix/" \
  ./modules/matrix/tests/is_equal.pas && echo -e ""
