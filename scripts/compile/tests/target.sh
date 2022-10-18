#!/bin/bash

echo -e "\n[Compiling tests for target...]\n"

fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/target/; \
  ./modules/test/;./modules/matrix/" ./modules/target/tests/delete.pas && \
  echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/target/; \
  ./modules/test/;./modules/matrix/" ./modules/target/tests/initialize.pas && \
  echo -e ""
