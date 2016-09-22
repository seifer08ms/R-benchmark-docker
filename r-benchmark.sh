#!/bin/sh
update-alternatives --config libblas.so.3
update-alternatives --config liblapack.so.3
echo "begin R-benchmark....................."
cat R-benchmark-25.R | time R --slave

