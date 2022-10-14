#!/bin/bash

sh remove.sh

echo -e "\n[Compiling tests...]"
echo -e "\n[Compiling tests for field...]\n"
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" ./modules/field/tests/delete_line.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" ./modules/field/tests/initialize.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" ./modules/field/tests/is_filled.pas && echo -e ""
fpc -vewn -Fu"./modules/field/;./modules/matrix/;./modules/test/" ./modules/field/tests/is_line_filled.pas && echo -e ""
echo -e "\n[Compiling tests for figure...]\n"
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_i_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_i_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_i_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_i_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_j_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_j_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_j_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_j_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_l_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_l_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_l_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_l_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_o_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_o_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_o_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_o_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_s_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_s_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_s_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_s_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_t_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_t_left.pas && echo -e "" 
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_t_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_t_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_z_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_z_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_z_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add_z_top.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/add.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/deactivate.pas && echo -e ""
fpc -vewn -Fu"./modules/matrix/;./modules/test/" ./modules/figure/tests/delete.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/is_on_the_bottom.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/move_down.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/move_left.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/move_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/next_orientation.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/read_form.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/read_orientation.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/read_position.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/rotate_right.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/write_form.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/write_orientation.pas && echo -e ""
fpc -vewn -Fu"./modules/element/;./modules/figure/;./modules/matrix/;./modules/test/" ./modules/figure/tests/write_position.pas && echo -e ""
echo -e "\n[Compiling tests for matrix...]\n"
fpc -vewn -Fu"./modules/test/;./modules/matrix/" ./modules/matrix/tests/clear.pas && echo -e ""
fpc -vewn -Fu"./modules/test/;./modules/matrix/" ./modules/matrix/tests/copy.pas && echo -e ""
fpc -vewn -Fu"./modules/test/;./modules/matrix/" ./modules/matrix/tests/fill.pas && echo -e ""
fpc -vewn -Fu"./modules/test/;./modules/matrix/" ./modules/matrix/tests/is_equal.pas && echo -e ""

echo -e "\n[Running tests...]"
echo -e "\n[Running tests for field...]"
./modules/field/tests/delete_line
./modules/field/tests/initialize
./modules/field/tests/is_filled
./modules/field/tests/is_line_filled
echo -e "\n[Running tests for figure...]"
./modules/figure/tests/add_i_down
./modules/figure/tests/add_i_left
./modules/figure/tests/add_i_right
./modules/figure/tests/add_i_top
./modules/figure/tests/add_j_down
./modules/figure/tests/add_j_left
./modules/figure/tests/add_j_right
./modules/figure/tests/add_j_top
./modules/figure/tests/add_l_down
./modules/figure/tests/add_l_left
./modules/figure/tests/add_l_right
./modules/figure/tests/add_l_top
./modules/figure/tests/add_o_down
./modules/figure/tests/add_o_left
./modules/figure/tests/add_o_right
./modules/figure/tests/add_o_top
./modules/figure/tests/add_s_down
./modules/figure/tests/add_s_left
./modules/figure/tests/add_s_right
./modules/figure/tests/add_s_top
./modules/figure/tests/add_t_down
./modules/figure/tests/add_t_left
./modules/figure/tests/add_t_right
./modules/figure/tests/add_t_top
./modules/figure/tests/add_z_down
./modules/figure/tests/add_z_left
./modules/figure/tests/add_z_right
./modules/figure/tests/add_z_top
./modules/figure/tests/add
./modules/figure/tests/deactivate
./modules/figure/tests/delete
./modules/figure/tests/is_on_the_bottom
./modules/figure/tests/move_down
./modules/figure/tests/move_left
./modules/figure/tests/move_right
./modules/figure/tests/next_orientation
./modules/figure/tests/read_form
./modules/figure/tests/read_orientation
./modules/figure/tests/read_position
./modules/figure/tests/rotate_right
./modules/figure/tests/write_form
./modules/figure/tests/write_orientation
./modules/figure/tests/write_position
echo -e "\n[Running tests for matrix...]"
./modules/matrix/tests/clear
./modules/matrix/tests/copy
./modules/matrix/tests/fill
./modules/matrix/tests/is_equal
