\name{genoSxT}
\alias{genoSxT}
\docType{data}
\title{Genotypic marker data for Sunco x Tasman doubled haploid
  population in R/qtl format}
\description{Linkage map marker data for the Sunco x Tasman doubled haploid
  population in the form of an R/qtl object.}
\usage{data(phenoSxT)}
\format{
  This data relates to a linkage map of 287 genetic markers genotyped on 190
  individuals from the Sunco x Tasman population. This set is reduced from
  the original 345 markers (a mixture of AFLP, RFLP and microsatellite
  markers and protein analysis). The reduction was created by discarding
  58 markers which were co-located with one or more other markers. The
  linkage map consists of 21 linkage groups with varying numbers of
  markers. Map distances have been estimated using \code{read.cross}
  with the kosambi mapping function. The data object is therefore in R/qtl
 format. See \code{read.cross} documentation for more details on the
 format of this object.
  }
\examples{

data(genoSxT, package = "wgaim")
link.map(genoSxT, cex = 0.5)

}
\keyword{datasets}
