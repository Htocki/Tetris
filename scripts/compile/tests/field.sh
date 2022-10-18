#!/bin/bash

echo -e "\n[Compiling tests for field...]\n"

dir=/modules/field/tests

fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  .$dir/delete_filled_lines.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  .$dir/delete_line.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  .$dir/initialize.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  .$dir/is_filled.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" \
  .$dir/is_line_filled.pas && echo -e ""
