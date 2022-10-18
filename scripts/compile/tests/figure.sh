#!/bin/bash

echo -e "\n[Compiling tests for figure...]\n"

fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_i_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_i_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_i_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_i_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_j_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_j_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_j_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_j_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_l_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_l_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_l_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_l_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_o_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_o_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_o_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_o_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_s_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_s_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_s_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_s_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_t_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_t_left.pas && echo -e "" 
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_t_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_t_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_z_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_z_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_z_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add_z_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/add.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/deactivate.pas && echo -e ""
fpc -vewn -Fu"./modules/matrix/;./modules/test/" \
  ./modules/figure/tests/delete.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/is_on_the_bottom.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/move_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/move_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/move_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/next_orientation.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/read_form.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/read_orientation.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/read_position.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/rotate_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/write_form.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/write_orientation.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" ./modules/figure/tests/write_position.pas && echo -e ""
