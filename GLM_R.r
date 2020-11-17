datLDL=read.table("/Users/uqxmo/HF/LDL_CAD/SCORE_LDL_CAD.txt",header= T, sep = "\t")
W=which(datLDL$LDL_direct=="NA")
#datLDL=datLDL[-W]
datLDL=head(datLDL,20)
lm1=lm(LDL_direct~SCORESUM_LDL,data=datLDL)
summary(lm1)
plot(datLDL$SCORESUM_LDL,datLDL$LDL_direct)
abline(lm(LDL_direct~SCORESUM_LDL,data=datLDL))
