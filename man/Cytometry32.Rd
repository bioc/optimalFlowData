\name{Cytometry32}
\alias{Cytometry32}
\docType{data}
\title{
Cytometry32
}
\description{
A simulated flow cytometry dataset, as a data frame, of a healthy individual based on data taken following Euroflow protocols.
}
\usage{data("Cytometry32")}
\format{
  A data frame with 260598 observations on the following 11 variables.
  \describe{
    \item{\code{CD19/TCRgd:PE Cy7-A LOGICAL}}{an integer vector.}
    \item{\code{CD38:APC H7-A LOGICAL}}{an integer vector.}
    \item{\code{CD3:APC-A LOGICAL}}{an integer vector.}
    \item{\code{CD4+CD20:PB-A LOGICAL}}{an integer vector.}
    \item{\code{CD45:PO-A LOGICAL}}{an integer vector.}
    \item{\code{CD56+IgK:PE-A LOGICAL}}{an integer vector.}
    \item{\code{CD5:PerCP Cy5-5-A LOGICAL}}{an integer vector.}
    \item{\code{CD8+IgL:FITC-A LOGICAL}}{an integer vector.}
    \item{\code{FSC-A LINEAR}}{an integer vector.}
    \item{\code{SSC-A Exp-SSC Low}}{an integer vector.}
    \item{\code{Population ID (name)}}{a vector of cell types (strings)}
  }
}
\source{
E del Barrio, H Inouzhe, JM Loubes, C Matran and A Mayo-Iscar. (2019) optimalFlow: Optimal-transport approach to flow cytometry gating and population matching. arXiv:1907.08006
}
\examples{
data(Cytometry32)
head(Cytometry32)
}
