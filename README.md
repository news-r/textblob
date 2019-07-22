
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->
[![Travis build status](https://travis-ci.org/news-r/textblob.svg?branch=master)](https://travis-ci.org/news-r/textblob)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

# textblob

Integrates [TextBlob](https://textblob.readthedocs.io) with R.

## Installation

First, install the package using `remotes`.

``` r
# install.packages("remotes")
remotes::install_github("news-r/textblob")
```

Then install the python dependencies.

``` r
textblob::install_textblob()
textblob::install_corpora()
```

This will install `textblob` and download the necessary NLTK corpora.

## Example

``` r
library(textblob)

wiki <- text_blob("R is an awesome programmming language") 

wiki$sentiment
#> Sentiment(polarity=1.0, subjectivity=1.0)

wiki$correct()
#> R is an awesome programming language
```
