#!/bin/bash
echo -e "\n[Compiling a project...]"
fpc -Fu"./modules/matrix/;./modules/element/;./modules/field/;./modules/figure/;./modules/console/;./modules/state/;./modules/key/;./modules/keyboard/;./modules/model/;./modules/target/;./modules/user/" tetris.pas

sh test.sh