\name{Cytometry17}
\alias{Cytometry17}
\docType{data}
\title{Cytometry17
%%   ~~ data name/kind ... ~~
}
\description{
A flow cytometry dataset as a data frame.
}
\usage{data("Cytometry17")}
\format{
  A data frame with 252425 observations on the following 11 variables.
  \describe{
    \item{\code{CD19/TCRgd:PE Cy7-A LOGICAL}}{a numeric vector}
    \item{\code{CD38:APC H7-A LOGICAL}}{a numeric vector}
    \item{\code{CD3:APC-A LOGICAL}}{a numeric vector}
    \item{\code{CD4+CD20:PB-A LOGICAL}}{a numeric vector}
    \item{\code{CD45:PO-A LOGICAL}}{a numeric vector}
    \item{\code{CD56+IgK:PE-A LOGICAL}}{a numeric vector}
    \item{\code{CD5:PerCP Cy5-5-A LOGICAL}}{a numeric vector}
    \item{\code{CD8+IgL:FITC-A LOGICAL}}{a numeric vector}
    \item{\code{FSC-A LINEAR}}{a numeric vector}
    \item{\code{SSC-A Exp-SSC Low}}{a numeric vector}
    \item{\code{Population ID (name)}}{a vector of cell types (strings)}
  }
}
\source{
E del Barrio, H Inouzhe, JM Loubes, C Matran and A Mayo-Iscar. (2019) optimalFlow: Optimal-transport approach to flow cytometry gating and population matching. arXiv:1907.08006
}
\examples{
data(Cytometry17)
head(Cytometry17)
}
