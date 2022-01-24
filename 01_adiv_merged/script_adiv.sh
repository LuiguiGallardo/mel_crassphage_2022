#!/bin/bash
alpha_diversity.py -i H-10.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_H-10.txt &
alpha_diversity.py -i H-118.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_H-118.txt &
alpha_diversity.py -i H-119.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_H-119.txt &
alpha_diversity.py -i H-120.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_H-120.txt &
alpha_diversity.py -i H-193.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_H-193.txt &
alpha_diversity.py -i H-314.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_H-314.txt &
alpha_diversity.py -i O-121.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_O-121.txt &
alpha_diversity.py -i O-122.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_O-122.txt &
alpha_diversity.py -i O-123.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_O-123.txt &
alpha_diversity.py -i O-152.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_O-152.txt &
alpha_diversity.py -i O-39.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_O-39.txt &
alpha_diversity.py -i O-418.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_O-418.txt &
alpha_diversity.py -i O-420.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_O-420.txt &
alpha_diversity.py -i O-434.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_O-434.txt &
alpha_diversity.py -i O-445.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_O-445.txt &
alpha_diversity.py -i OMC-124.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_OMC-124.txt &
alpha_diversity.py -i OMC-125.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_OMC-125.txt &
alpha_diversity.py -i OMC-126.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_OMC-126.txt &
alpha_diversity.py -i OMC-288.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_OMC-288.txt &
alpha_diversity.py -i OMC-446.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_OMC-446.txt &
alpha_diversity.py -i OMC-55.biom -m chao1,observed_otus,shannon,simpson,goods_coverage -o adiv_OMC-55.txt &
wait
for f in adiv_* ; do head -1 $f | sed "s/^\t*//g" > average_$f ; for s in {2..6} ; do cat $f | awk -v N=$s '{ sum += $N } END { if (NR > 0) printf sum/NR"\t" }'  >> average_$f ; done ; done

