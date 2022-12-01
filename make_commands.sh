#!/bin/bash -e

# This script replaces all the extra apostrophes, introduces by the python patch.

compiledb make -j all
sed "s/'\"/\"/g" compile_commands.json > tmp.json
sed "s/\"'/\"/g" tmp.json > compile_commands.json
rm -f tmp.json
cp compile_commands.json ../
