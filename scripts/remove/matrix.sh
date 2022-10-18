#!/bin/bash

dir=**/matrix
rm $dir/umatrix.o
rm $dir/umatrix.ppu

dir=**/matrix/**
rm $dir/clear
rm $dir/copy
rm $dir/fill
rm $dir/is_equal
