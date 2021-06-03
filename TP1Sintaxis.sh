#!/bin/bash

punto_a () {
    sed 's/\./\.\n/g' breve_historia.txt > breve_historia_a.txt
}

punto_b () {
    grep '\S' breve_historia_a.txt > breve_historia_b.txt
}

punto_c () {
    grep '\S' breve_historia.txt | sed 's/\./\.\n/g' breve_historia.txt > breve_historia_c.txt
}

punto_d () {
    grep -iF 'guerra' breve_historia.txt -w
}

punto_e () {
    grep -E '^\A.*s.$' breve_historia_a.txt
}

punto_f () {
    ngrep_result=$( grep 'peronismo' breve_historia.txt -c )
    echo "La palabra [ peronismo ] aparece " $ngrep_result " veces"
}

punto_g () {
    ngrep_result=$( grep -i -E "sarmiento|rosas" breve_historia.txt | wc -l )
    echo "[ sarmiento y rosas ] aparece en " $ngrep_result " lineas"
}

punto_h () {
    grep -i -E -n "18[0-9][0-9]|xix" breve_historia.txt
}

punto_i () {
    sed 's/^[a-zA-Z]*\b//g' breve_historia.txt
}

punto_j () {
    ls -R /home | grep '.txt$' | wc -l
}

