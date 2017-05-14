#!/bin/bash

BM=`sed ':a;N;$!ba;s/\n/ /g' xml/$1`
wget -O ../output/$1.tab "https://phytozome.jgi.doe.gov/biomart/martservice?query=$BM"
