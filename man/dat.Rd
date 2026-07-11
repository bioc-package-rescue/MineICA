\name{dat}
\alias{dat}
\alias{dat,IcaSet-method}
\alias{dat<-}
\alias{dat<-,IcaSet-method}
\alias{dat<-,IcaSet,matrix-method} 
\alias{datByGene}
\alias{datByGene,IcaSet-method}
\alias{datByGene<-}
\alias{datByGene<-,IcaSet-method}
\alias{datByGene<-,IcaSet,matrix-method} 

\alias{geneNames}
\alias{geneNames,IcaSet-method}


\title{Retrieve and set data from IcaSet}
\description{
  These generic functions access and set the attributes dat stored in an object of class \code{IcaSet}.
}
\usage{
dat(object)
dat(object) <- value
datByGene(object)
datByGene(object) <- value
geneNames(object)
}
\arguments{
  \item{object}{object of class \code{IcaSet}}
  \item{value}{Matrix with rows representing features or genes and columns samples.}
}

\value{
  \code{dat} and \code{datByGene} return a matrix containing measured values (e.g
  expression data) indexed by features and genes, respectively.
  \code{geneNames} returns the names of the genes, i.e the row names of
  \code{datByGene}.
}
\author{Anne}

\examples{
library(MineICA)
data(icaSetCarbayo)
# Retrieve expression data
expr_matrix <- dat(icaSetCarbayo)
head(expr_matrix)

# Retrieve gene level expression data
gene_expr_matrix <- datByGene(icaSetCarbayo)
head(gene_expr_matrix)

# Retrieve gene names
geness <- geneNames(icaSetCarbayo)
head(geness)
}
