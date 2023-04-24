#' Title
#'
#' @param text
#' @param from
#' @param to
#' @param trim_str
#'
#' @return
#' @export
#'
#' @examples
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
