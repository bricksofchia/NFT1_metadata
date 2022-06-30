#!/bin/bash
i=1
for i in {1..9};
do
echo $i
sleep 3
test=$(curl -s https://raw.githubusercontent.com/bricksofchia/NFT1_metadata/main/metadata$i.json| sha256sum)
echo ${test::length-3} >> meta_hash.txt
done
