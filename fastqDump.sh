module load sratoolkit/2.8.1-3

infile="SRARunTable_SCroots.txt"

## single reads  - not here

## paired

sample_id_paired=`awk 'FNR >1 { if ($7 == "PAIRED") print $15}' $infile`

for sip in $sample_id_paired; do
    echo "fastq-dump --split-files"  $sip
done

