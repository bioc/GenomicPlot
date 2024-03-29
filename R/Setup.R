# managing namespace

#' @import methods
utils::globalVariables(
#' @import ggplot2
#' @importFrom Rsamtools testPairedEndBam idxstatsBam scanBamFlag ScanBamParam
#' @importFrom parallel detectCores clusterExport parLapply makeCluster 
#' @importFrom parallel stopCluster clusterApply
#' @importFrom dplyr bind_cols bind_rows mutate filter arrange %>% group_by 
#' @importFrom dplyr select count full_join left_join desc inner_join
#' @importFrom dplyr rename_with summarize n_distinct lead n all_of
#' @importFrom plyranges filter_by_overlaps
#' @importFrom GenomicAlignments readGAlignments
#' @importFrom GenomeInfoDb Seqinfo seqinfo seqlevels seqnames seqinfo<- 
#' @importFrom GenomeInfoDb seqlevels<- seqnames<- keepStandardChromosomes 
#' @importFrom GenomeInfoDb seqlengths
#' @importFrom rtracklayer export.bed import.bw wigToBigWig asBED
#' @importFrom RCAS importGtf queryGff
#' @importFrom ggpubr ggtexttable ttheme tab_add_title
#' @importFrom ggplotify as.grob
#' @importFrom ggsci pal_npg scale_color_npg scale_fill_npg
#' @importFrom ggsignif geom_signif
#' @importFrom cowplot plot_grid ggdraw draw_label draw_plot
#' @importFrom edgeR calcNormFactors
#' @importFrom genomation ScoreMatrixBin annotateWithFeatures
#' @importFrom BiocGenerics strand strand<- score score<- append start start<- 
#' @importFrom BiocGenerics end end<- Reduce type
#' @importFrom grid grid.grabExpr grid.draw grid.text grid.newpage gpar
#' @importFrom tidyr pivot_longer
#' @importFrom scales percent rescale
#' @importFrom IRanges mergeByOverlaps width
#' @importFrom GenomicRanges trim shift resize promoters flank countOverlaps 
#' @importFrom GenomicRanges coverage granges grglist tileGenome setdiff narrow
#' @importFrom GenomicRanges nearest findOverlaps GRanges GRangesList mcols 
#' @importFrom GenomicRanges mcols<- makeGRangesFromDataFrame
#' @importFrom GenomicFeatures transcriptLengths exonsBy intronsByTranscript 
#' @importFrom GenomicFeatures threeUTRsByTranscript fiveUTRsByTranscript
#' @importFrom GenomicFeatures cdsBy genes transcripts
#' @importFrom txdbmaker makeTxDbFromGRanges
#' @importFrom ComplexHeatmap HeatmapAnnotation Heatmap draw pheatmap
#' @importFrom circlize colorRamp2 read.chromInfo
#' @importFrom viridis viridis scale_fill_viridis
#' @importFrom VennDiagram draw.pairwise.venn draw.triple.venn draw.quad.venn
#' @importFrom grDevices dev.list dev.off pdf
#' @importFrom graphics abline hist pairs panel.smooth par points rect strwidth 
#' @importFrom graphics text boxplot
#' @importFrom utils combn head read.delim read.delim2 read.table tail 
#' @importFrom utils type.convert write.table data object.size
#' @importFrom stats TukeyHSD aggregate aov approx prcomp heatmap biplot
#' @importFrom stats as.formula cor density dist ecdf hclust
#' @importFrom stats ks.test mad median na.omit qqplot quantile
#' @importFrom stats reorder sd smooth.spline wilcox.test t.test
)

utils::globalVariables(names = as.character(expression(CDS, Count, Exon, Feature, 
                                     Fraction, Groups, Intensity, Interval, 
                                     Intron, Location, N_Intensity, PC1, PC2, 
                                     Promoter, Query, Rank, Sample, Samples, 
                                     Transcript, X, Y, chr, chrPeak, 
                                     chrfeature, correlation, csum, cumCount, 
                                     endPeak, endfeature, feature, 
                                     feature_name, fid, gene_id, gene_name, 
                                     idPeak, k, len, lower, lower_limit, 
                                     mean_Intensity, name, norm_count, 
                                     norm_csum, norm_percent, norm_pos, pos, 
                                     queryIndex, runValue, scorePeak, 
                                     sd_Intensity, se, startPeak, startfeature,
                                     strandPeak, strandfeature, transcript_id, 
                                     tx_name, upper, upper_limit, value, 
                                     widthfeature, x, x2, y)))
NULL
