#!/bin/bash

INPUT_FILE="${1?:provide input file as first argument}"

echo 'DROP SCHEMA IF EXISTS aoc;'
echo 'CREATE SCHEMA aoc;'
echo 'USE aoc;'
echo 'CREATE TABLE Input (Val int(4) NOT NULL);'
while read -r line; do
	printf 'INSERT INTO Input (Val) VALUES (%d);\n' "$line"
done <"$INPUT_FILE"
