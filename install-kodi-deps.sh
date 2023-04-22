#! /bin/sh

rm -r ./extra-lib/*
touch ./extra-lib/__init__.py
wget https://github.com/Paco8/ttml2ssa/releases/download/v0.3.8/script.module.ttml2ssa-0.3.8-matrix.zip
unzip script.module.ttml2ssa-0.3.8-matrix.zip
mv ./script.module.ttml2ssa/resources/lib/*.py ./extra-lib/
rm ./script.module.ttml2ssa-0.3.8-matrix.zip
rm -r ./script.module.ttml2ssa/
