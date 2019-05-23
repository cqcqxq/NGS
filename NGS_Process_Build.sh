bowtie2-build GCF_000146045.2_R64_genomic.fna Yeast
wait $!
fasterq-dump SRR9043513.sra
wait $!
tophat -p8 -G GCF_000146045.2_R64_genomic.gff -T ./Yeast ./SRR9043513.sra_1.fastq ./SRR9043513.sra_2.fastq
wait $!
cufflinks tophat_out/accepted_hits.bam
