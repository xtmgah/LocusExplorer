# ENCODE bigwig data 
# 7 bigwig filtered data, score > 5, similar to UCSC track, overlaying area plots

ggplot(data=plotDatwgEncodeBroadHistone(),
       aes(BP,SCORE,fill=ENCODE)) +
  geom_area(alpha = 0.5, position = "identity") +
  scale_fill_manual(values = wgEncodeBroadHistoneFileDesc$ColourDark) +
  scale_y_continuous(breaks=50,
                     labels=udf_pad("Histone"),
                     name="xxx") +
  #general options
  xlim(c(zoomStart(),zoomEnd())) +
  udf_theme()



# TESTING -----------------------------------------------------------------
# ggplot(x,aes(BP,SCORE,fill=ENCODE)) +
#   geom_area(alpha = 0.5, position = "identity") +
#   scale_fill_manual(values = EncodeFileDesc$ColourDark) +
#   theme_classic()
# 
# ggplot(x,aes(BP,SCORE,fill=ENCODE)) +
#   geom_area(position="stack") +
#   theme_classic()
# 
# ggplot(x,aes(BP,SCORE,fill=ENCODE)) +
#   geom_area(col="grey") +
#   theme_classic()
# 
# ggplot(x,aes(BP,SCORE,fill=ENCODE)) +
#   geom_area(col="grey") +
#   facet_grid(ENCODE~.) +
#   theme_classic()
# 
# # roi <- GRanges(seqnames = "chrX",
# #                IRanges(start = 66820000,
# #                        end = 66840000))
