#!/bin/bash

# Удаление мусорных файлов.
sh scripts/remove/console.sh
sh scripts/remove/element.sh
sh scripts/remove/field.sh
sh scripts/remove/figure.sh
sh scripts/remove/key.sh
sh scripts/remove/keyboard.sh
sh scripts/remove/matrix.sh
sh scripts/remove/model.sh
sh scripts/remove/state.sh
sh scripts/remove/target.sh
sh scripts/remove/test.sh
sh scripts/remove/user.sh

# Компиляция тестов.
sh scripts/compile/tests/field.sh
sh scripts/compile/tests/figure.sh
sh scripts/compile/tests/matrix.sh
sh scripts/compile/tests/target.sh

# Запуск тестов.
sh scripts/run/field.sh
sh scripts/run/figure.sh
sh scripts/run/matrix.sh
sh scripts/run/target.sh

# Компиляция тетриса.
sh scripts/compile/tetris.sh
