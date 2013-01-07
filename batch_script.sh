#!/bin/sh
mkdir -p workspace_in;
mkdir -p workspace_out;
cd workspace_in;
for png in *.png;
do
  ../pngcrush/pngcrush -reduce -brute "$png" ../workspace_out/"$png"
done;
