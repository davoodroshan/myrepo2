#'---
#'title: "hello world"
#'date: "2023-11-14"
#'output: github_document
#'---
  
#+ r setup, include = FALSE
#+knitr::opts_chunk$set(echo = TRUE)


## Intro
#'This was just added from pc 

#+ r label1
summary(cars)
#+

#' ## R Markdown

#' This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

#' When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:
  
#+ r label2
mean(cars$speed)
#+


#+ r label2
sd(cars$speed)
#+
