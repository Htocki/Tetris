#!/bin/bash

# Удаление мусорных файлов.
dir=scripts/remove
sh $dir/console.sh
sh $dir/element.sh
sh $dir/field.sh
sh $dir/figure.sh
sh $dir/key.sh
sh $dir/keyboard.sh
sh $dir/matrix.sh
sh $dir/model.sh
sh $dir/state.sh
sh $dir/target.sh
sh $dir/test.sh
sh $dir/user.sh

# Компиляция тестов.
dir=scripts/compile/tests
sh $dir/field.sh
sh $dir/figure.sh
sh $dir/matrix.sh
sh $dir/target.sh

# Запуск тестов.
dir=scripts/run
sh $dir/field.sh
sh $dir/figure.sh
sh $dir/matrix.sh
sh $dir/target.sh

# Компиляция тетриса.
dir=scripts/compile
sh $dir/tetris.sh
