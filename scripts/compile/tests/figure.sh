#!/bin/bash

echo -e "\n[Compiling tests for figure...]\n"

dir=/modules/figure/tests

fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_i_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_i_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_i_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_i_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_j_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_j_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_j_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_j_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_l_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_l_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_l_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_l_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_o_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_o_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_o_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_o_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_s_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_s_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_s_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_s_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_t_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_t_left.pas && echo -e "" 
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_t_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_t_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_z_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_z_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_z_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add_z_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/add.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/deactivate.pas && echo -e ""
fpc -vewn -Fu"./modules/matrix/;./modules/test/" \
  .$dir/delete.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/is_on_the_bottom.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/move_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/move_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/move_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/next_orientation.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/read_form.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/read_orientation.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/read_position.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/rotate_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/write_form.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/write_orientation.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/; \
  ./modules/test/" .$dir/write_position.pas && echo -e ""
