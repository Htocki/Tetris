#!/bin/bash

echo -e "\n[Compiling a tetris...]\n"

fpc -Fu"./modules/matrix/;./modules/element/;./modules/field/; \
  ./modules/figure/;./modules/console/;./modules/state/;./modules/key/; \
  ./modules/keyboard/;./modules/model/;./modules/target/;./modules/user/" \
  tetris.pas
