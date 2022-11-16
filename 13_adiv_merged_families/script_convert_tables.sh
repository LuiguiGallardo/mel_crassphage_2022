paste <(cat H-10.tsv | cut -f -1001) <(cat H-10.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > H-10_2.txt
paste <(cat H-118.tsv | cut -f -1001) <(cat H-118.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > H-118_2.txt
paste <(cat H-119.tsv | cut -f -1001) <(cat H-119.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > H-119_2.txt
paste <(cat H-120.tsv | cut -f -1001) <(cat H-120.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > H-120_2.txt
paste <(cat H-161.tsv | cut -f -1001) <(cat H-161.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > H-161_2.txt
paste <(cat H-193.tsv | cut -f -1001) <(cat H-193.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > H-193_2.txt
paste <(cat H-314.tsv | cut -f -1001) <(cat H-314.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > H-314_2.txt
paste <(cat O-121.tsv | cut -f -1001) <(cat O-121.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > O-121_2.txt
paste <(cat O-122.tsv | cut -f -1001) <(cat O-122.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > O-122_2.txt
paste <(cat O-123.tsv | cut -f -1001) <(cat O-123.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > O-123_2.txt
paste <(cat O-152.tsv | cut -f -1001) <(cat O-152.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > O-152_2.txt
paste <(cat O-39.tsv | cut -f -1001) <(cat O-39.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > O-39_2.txt
paste <(cat O-418.tsv | cut -f -1001) <(cat O-418.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > O-418_2.txt
paste <(cat O-420.tsv | cut -f -1001) <(cat O-420.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > O-420_2.txt
paste <(cat O-434.tsv | cut -f -1001) <(cat O-434.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > O-434_2.txt
paste <(cat O-445.tsv | cut -f -1001) <(cat O-445.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > O-445_2.txt
paste <(cat OMC-124.tsv | cut -f -1001) <(cat OMC-124.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > OMC-124_2.txt
paste <(cat OMC-125.tsv | cut -f -1001) <(cat OMC-125.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > OMC-125_2.txt
paste <(cat OMC-126.tsv | cut -f -1001) <(cat OMC-126.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > OMC-126_2.txt
paste <(cat OMC-288.tsv | cut -f -1001) <(cat OMC-288.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > OMC-288_2.txt
paste <(cat OMC-446.tsv | cut -f -1001) <(cat OMC-446.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > OMC-446_2.txt
paste <(cat OMC-55.tsv | cut -f -1001) <(cat OMC-55.tsv | cut -f 1 | cut -f 1 -d _) | sed 's/#OTU ID/taxonomy/2' > OMC-55_2.txt
biom convert -i H-10_2.txt -o H-10_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i H-118_2.txt -o H-118_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i H-119_2.txt -o H-119_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i H-120_2.txt -o H-120_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i H-161_2.txt -o H-161_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i H-193_2.txt -o H-193_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i H-314_2.txt -o H-314_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i O-121_2.txt -o O-121_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i O-122_2.txt -o O-122_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i O-123_2.txt -o O-123_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i O-152_2.txt -o O-152_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i O-39_2.txt -o O-39_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i O-418_2.txt -o O-418_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i O-420_2.txt -o O-420_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i O-434_2.txt -o O-434_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i O-445_2.txt -o O-445_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i OMC-124_2.txt -o OMC-124_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i OMC-125_2.txt -o OMC-125_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i OMC-126_2.txt -o OMC-126_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i OMC-288_2.txt -o OMC-288_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i OMC-446_2.txt -o OMC-446_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i OMC-55_2.txt -o OMC-55_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
biom convert -i tmp_2.txt -o tmp_2.biom --to-hdf5 --header-key taxonomy --process-obs-metadata taxonomy
summarize_taxa.py -L 1 -a -i H-10_2.biom -o sumtax_H-10_2
summarize_taxa.py -L 1 -a -i H-118_2.biom -o sumtax_H-118_2
summarize_taxa.py -L 1 -a -i H-119_2.biom -o sumtax_H-119_2
summarize_taxa.py -L 1 -a -i H-120_2.biom -o sumtax_H-120_2
summarize_taxa.py -L 1 -a -i H-161_2.biom -o sumtax_H-161_2
summarize_taxa.py -L 1 -a -i H-193_2.biom -o sumtax_H-193_2
summarize_taxa.py -L 1 -a -i H-314_2.biom -o sumtax_H-314_2
summarize_taxa.py -L 1 -a -i O-121_2.biom -o sumtax_O-121_2
summarize_taxa.py -L 1 -a -i O-122_2.biom -o sumtax_O-122_2
summarize_taxa.py -L 1 -a -i O-123_2.biom -o sumtax_O-123_2
summarize_taxa.py -L 1 -a -i O-152_2.biom -o sumtax_O-152_2
summarize_taxa.py -L 1 -a -i O-39_2.biom -o sumtax_O-39_2
summarize_taxa.py -L 1 -a -i O-418_2.biom -o sumtax_O-418_2
summarize_taxa.py -L 1 -a -i O-420_2.biom -o sumtax_O-420_2
summarize_taxa.py -L 1 -a -i O-434_2.biom -o sumtax_O-434_2
summarize_taxa.py -L 1 -a -i O-445_2.biom -o sumtax_O-445_2
summarize_taxa.py -L 1 -a -i OMC-124_2.biom -o sumtax_OMC-124_2
summarize_taxa.py -L 1 -a -i OMC-125_2.biom -o sumtax_OMC-125_2
summarize_taxa.py -L 1 -a -i OMC-126_2.biom -o sumtax_OMC-126_2
summarize_taxa.py -L 1 -a -i OMC-288_2.biom -o sumtax_OMC-288_2
summarize_taxa.py -L 1 -a -i OMC-446_2.biom -o sumtax_OMC-446_2
summarize_taxa.py -L 1 -a -i OMC-55_2.biom -o sumtax_OMC-55_2
