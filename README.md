
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->
[![Travis build status](https://travis-ci.org/news-r/textblob.svg?branch=master)](https://travis-ci.org/news-r/textblob) [![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) <!-- badges: end -->

textblob
========

Integrates [TextBlob](https://textblob.readthedocs.io) with R.

Installation
------------

First, install the package using `remotes`.

``` r
# install.packages("remotes")
remotes::install_github("news-r/textblob")
```

Then install the python dependencies, only do this one per virtual environment.

``` r
# replace with path of your choice
my_env <- "./env"

# run this (works on unix)
args <- paste("-m venv", my_env) gensim & scikit-learn
system2("python3", args) # create environment
reticulate::use_virtualenv(my_env) # force reticulate to use env
# install textblob in environment
textblob::install_textblob(my_env)
```

Then download the necessary NLTK datasets, note that there is a lite version.

``` r
# download corpora
textblob::download_corpora() 
```

This will install `textblob` and download the necessary NLTK corpora.

Example
-------

``` r
library(textblob)

string <- paste(
  "R is a programmming langage and free software",
  "environment for statistical computing and",
  "graphics supported by the R Foundation for",
  "Statistical Computing."
)

wiki <- text_blob(string) 

wiki$sentiment # get sentiment
#> Sentiment(polarity=0.4, subjectivity=0.8)

wiki$correct() # correct programmming langage
#> R is a programming language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing.

wiki$translate(to = "es") # translate
#> R es un lenguaje de programación y un entorno de software libre para computación estadística y gráficos soportados por la Fundación R para Computación Estadística.
```
