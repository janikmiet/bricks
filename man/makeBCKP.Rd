% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makebckp.R
\name{makeBCKP}
\alias{makeBCKP}
\title{Create backup ZIP}
\usage{
makeBCKP(folder = "~/", exclude = c(".csv", ".rds", ".rdata", ".sas7bdat",
  ".zip"))
}
\arguments{
\item{folder}{folder to backup, creates also zip file here}

\item{exlude}{vector of file extensions to exclude}
}
\description{
Creates backup ZIP-file from root-folder. Exludes csv, rds, rdata, sas7bdat and zip.
}
\author{
Jani Miettinen <jani.k.miettinen@gmail.com>
}
