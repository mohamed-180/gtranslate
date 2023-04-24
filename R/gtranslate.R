#' Translate between different languages
#'
#' @param text (character) vector of text to translate
#' @param from (character) abbreviation to the input language code eg: "en" for English, by default it is "auto" for auto-detecting the input language.
#' @param to (character) abbreviation to the output language code.
#' @param trim_str (logical) indicating whether to trim the string if it is exceeds 5000 characters.
#'
#' @importFrom rvest read_html html_text2 html_elements
#' @importFrom httr GET content
#'
#' @return (character) vector of translated input text.
#' @export
#'
#' @examples
#'
#' translate("﷽", from = "ar", to = "en")

#' translate("How are you?", from = "auto", to = "ar")
#'

translate <- function(text, from = "auto", to = "ar", trim_str = TRUE){


  stopifnot(is.character(text))

  text = trimws(text)

  url <- "https://translate.google.com/m"

  sapply(text,
         function(x){

           if(x == "") return("")

           if(nchar(x) >= 5000) {
             if(trim_str) x = substr(x, 1, 4999)
             else stop("The length of the text must be less than 5000 characters.")
           }
           r <- httr::GET(url, query = list(sl = from, tl = to, q = x))
           p <- rvest::read_html(httr::content(r, 'text'))
           rvest::html_text2(rvest::html_elements(p, xpath = '//div[@class="result-container"]'))
         },
         USE.NAMES = FALSE)
}
