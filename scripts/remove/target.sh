#!/bin/bash

dir=**/target
rm $dir/utarget.o
rm $dir/utarget.ppu

dir=**/target/**
rm $dir/delete
rm $dir/delete.o
rm $dir/initialize
rm $dir/initialize.o
