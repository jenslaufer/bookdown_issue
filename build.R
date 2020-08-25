library(tidyverse)
library(glue)
library(bookdown)


parameterized_book_render <- function(.param1, .title) {
  outputdir <- "_book/PDF/{.title}/{.param1}" %>% glue()
  
  parameters <- list(title = .title,
                     param1 = .param1, )
  
  bookdown::render_book("index.Rmd",
                        "bookdown::pdf_book",
                        output_dir = outputdir,
                        params = parameters)
}

data <-
  tibble(title = c("title1", "title2"),
         param1 = c("bla", "blubb"))

data %>%
  pmap( ~ parameterized_book_render(..1,
                                    ..2))
