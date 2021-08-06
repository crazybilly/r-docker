library(lubridate)
library(dplyr)
library(magrittr)
library(stringr)
library(tidyr)
library(xml2)
library(jsonlite)
library(mime)
library(openssl)
library(covr)
library(httpuv)
library(jpeg)
library(png)
library(readr)
library(curl)
library(httr)

external_f  <- function(post_location, ..., host = 'localhost', port = '8000', content_function = as.numeric) {

    theurl  <- paste0('http://', host, ':', port, '/', post_location)

    dots  <- list(...)

    result  <- POST(theurl, body = dots, encode = 'json')
    content_function(content(result))

}


test_rserve  <- function(x = 'foo') {
    
    return('Rserve is configured!')

}

