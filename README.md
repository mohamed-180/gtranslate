
# gtranslate

<!-- badges: start -->
<!-- badges: end -->

The goal of `gtranslate` is to translate between different languages without any google api authentication which is painfull and you must pay for, `gtranslate` is free and lightweight.

`gtranslate` is inspired by [`deep-translator`](https://github.com/nidhaloff/deep-translator) package.


## Installation

You can install the development version of gtranslate from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mohamed-180/gtranslate")
```

## Example

This is a basic example which shows you how to use the package:

``` r
library(gtranslate)

translate("How are you?")

[1] "كيف حالك؟"
```

