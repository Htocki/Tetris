#!/bin/bash

echo -e "\n[Compiling tests for field...]\n"

fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  ./modules/field/tests/delete_filled_lines.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  ./modules/field/tests/delete_line.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  ./modules/field/tests/initialize.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  ./modules/field/tests/is_filled.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  ./modules/field/tests/is_line_filled.pas && echo -e ""
