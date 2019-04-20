#!/bin/sh
echo '                     ************************* Nebula Language Compiler build File *************************';
echo '
    ||||||\\\\     ||||||    |||||||||||||||||     |||||||||||||||||       |||||         |||||     |||||                  //|||||||||||||\\\
    ||||||\\\\\\    ||||||    |||||                 |||||       |||||       |||||         |||||     |||||                 ////|         |\\\\\\\
    ||||||\\\\\\\   ||||||    |||||                 |||||       |||//       |||||         |||||     |||||                 |||||         |||||
    |||||| \\\\\\\  ||||||    |||||                 |||||       ///         |||||         |||||     |||||                 |||||         |||||
    ||||||  \\\\\\\ ||||||    |||||||||||           |||||||||\\\\\\\           |||||         |||||     |||||                 |||||||||||||||||||
    ||||||   \\\\\\\||||||    |||||                 |||||       \\\          |||||         |||||     |||||                 |||||         |||||
    ||||||    \\\\\\\|||||    |||||                 |||||       |||\\        |||||         |||||     |||||                 |||||         |||||
    ||||||     \\\\\\\||||    |||||                 |||||       |||||       |||||         |||||     |||||                 |||||         |||||
    ||||||      \\\\\\\|||    |||||||||||||||||     |||||||||||||||||        \\|||||||||||||||//     \\|||||||||||||||      |||||         |||||
'

echo 'Started Building......'
cd ..
cd ..
cd src/parser
flex calc.l
bison -dy calc.y
gcc lex.yy.c y.tab.c -o out
./out<$1