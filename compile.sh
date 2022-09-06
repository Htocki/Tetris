#!/bin/bash
echo -e "\n[Compiling a project...]"
fpc -Fu"./module/matrix/;./module/field/;./module/figure/;./module/console/;./module/state/;./module/key/;./module/keyboard/;./module/model/;./module/target/;./module/user/" tetris.pas
echo -e "\n[Compiling tests...]"
echo -e "[Compiling test for matrix.clear...]"
fpc -Fu"./module/test/;./module/matrix/" ./test/matrix/clear.pas
echo -e "\n[Compiling test for matrix.copy...]"
fpc -Fu"./module/test/;./module/matrix/" ./test/matrix/copy.pas
echo -e "\n[Compiling test for matrix.fill...]"
fpc -Fu"./module/test/;./module/matrix/" ./test/matrix/fill.pas
echo -e "\n[Running tests...]"
./test/matrix/clear
./test/matrix/copy
./test/matrix/fill