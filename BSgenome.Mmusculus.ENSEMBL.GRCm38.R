library(BSgenome)

# library(AnnotationHub)
# ah <- AnnotationHub()
# query(ah, c("Mus musculus","2bit","dna.primary_assembly"))
# query(ah, c("Mus musculus","2bit","dna.primary_assembly", "92"))
# ah[["AH61538"]]

~/faToTwoBit ENSEMBL_release92/Mus_musculus.GRCm38.dna.primary_assembly.fa ENSEMBL_release92/Mus_musculus.GRCm38.dna.primary_assembly.2bit


forgeBSgenomeDataPkg("BSgenome.Mmusculus.ENSEMBL.GRCm38-seed")

R CMD build BSgenome.Mmusculus.ENSEMBL.GRCm38

R CMD check BSgenome.Mmusculus.ENSEMBL.GRCm38

R CMD INSTALL BSgenome.Mmusculus.ENSEMBL.GRCm38_0.1.0.tar.gz

library(BSgenome.Mmusculus.ENSEMBL.GRCm38)
Mmusculus
Mmusculus[[1]]
seqlengths(Mmusculus)

sum(as.integer(readLines("/Volumes/ProjectDataMarini2/VF/_ref/index_STAR_mm_GRCm38.92/chrLength.txt")))
sum(seqlengths(Mmusculus))
