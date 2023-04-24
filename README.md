# gtranslate

<!-- badges: start -->

<!-- badges: end -->

The goal of **`gtranslate`** is to translate between different languages without any Google API authentication which is pain and you must pay for the key, **`gtranslate`** is free and lightweight.

**`gtranslate`** is inspired by [`deep-translator`](https://github.com/nidhaloff/deep-translator) package.

## Installation

You can install the development version of **`gtranslate`** from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mohamed-180/gtranslate")
```

## Example

This is a basic example which shows you how to use the package:

``` r
library(gtranslate)

translate("﷽", from = "ar", to = "en")

#[1] "In the name of God, Most Compassionate, Most Merciful"

#--------------------------------------------------------------
translate("How are you?", from = "auto", to = "ar")

#[1] "كيف حالك؟"
```

You can pass character vector as `text` argument

``` r
library(gtranslate)

txt <- c("What time is it?", "Go home!", "I'm 30 years old.")

translate(txt, from = "auto", to = "hi") # hi for hindi

#[1] "ये वक़्त क्या है?"   "घर जाओ!"        "मैं 30 साल का हूँ।"
```

You can also pass any list-like object

``` r
library(gtranslate)
library(stringr)

translate(fruit[1:5], to = 'de') # de for German

#[1] "Apfel"    "Aprikose" "Avocado"  "Banane"   "Paprika"
```
## Codes for supported languages

You can use **`lang_codes`** list to get the codes of the available languages instead of abbreviations characters as follows 

``` r
library(gtranslate)

translate("R is a beatiful language.", from = lang_codes$english, to = lang_codes$turkish)

#[1] "R güzel bir dildir."
```


## Limitations

There are two limitations to **`gtranslate`**:

- The number of characters which sends per query must not exceeds 5000 characters, so there is `trim_str` argument which
`TRUE` by default to trim the string to less than 5000 characters, You can put it to `FALSE` but you must handle the error your self by using `tryCatch`, split the long string or any other appropriate way.

- According to google, you are allowed to make 5 requests per second, and up to 200k requests per day.


