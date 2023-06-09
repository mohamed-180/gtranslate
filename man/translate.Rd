% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gtranslate.R
\name{translate}
\alias{translate}
\title{Translate between different languages}
\usage{
translate(text, from = "auto", to = "ar", trim_str = TRUE)
}
\arguments{
\item{text}{(character) vector of text to translate}

\item{from}{(character) abbreviation to the input language code eg: "en" for English, by default it is "auto" for auto-detecting the input language.}

\item{to}{(character) abbreviation to the output language code.}

\item{trim_str}{(logical) indicating whether to trim the string if it is exceeds 5000 characters.}
}
\value{
(character) vector of translated input text.
}
\description{
Translate between different languages
}
\examples{

translate("How are you?", from = "auto", to = "ar")

}
