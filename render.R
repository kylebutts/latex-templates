#' Credit to https://github.com/andrewheiss/hikmah-academic-quarto/tree/main

# %%
library(tidyverse)
library(magick)
library(fs)

file_delete(dir_ls("thumbnails/"))
dir_create("thumbnails/")

# %%
# @param tile Number of images per row
thumbify <- function(to_convert, which_pages = TRUE, tile = 3) {
  template_name <- path_split(to_convert)[[1]][1]

  # Convert each rendered PDF to a collage and save as PNG
  pages <- image_read_pdf(to_convert)

  if (isTRUE(which_pages)) {
    which_pages <- seq_len(length(pages))
  }
  pages_split <- split(which_pages, ceiling(seq_along(which_pages) / tile))

  images <- c()
  for (i in seq_along(pages_split)) {
    curr_pages <- pages_split[[i]]
    thumbnail_name <- path("thumbnails/", sprintf("%s-%s.png", template_name, i))

    pages[curr_pages] |>
      image_montage(
        geometry = "x2000+25+35",
        tile = tile,
        bg = "grey92",
        shadow = FALSE
      ) |>
      image_convert(format = "png") |>
      image_write(thumbnail_name)

    images <- c(images, thumbnail_name)
  }

  return(images)
}

# %%
article_images <- thumbify(
  "latex-article/article.pdf",
  which_pages = TRUE,
  tile = 3
)
slides_images <- thumbify(
  "latex-slides/slides.pdf",
  which_pages = c(1, 3,11, 14, 18, 21),
  tile = 3
)
response_images <- thumbify(
  "referee-response/responses.pdf",
  which_pages = TRUE,
  tile = 3
)


# %%
#| label: 'Create README.md images'
readme <- xfun::read_utf8("README.md")

article_md <- sprintf(
  '[<img src="%s" style="width: 100.0%%" />](%s)',
  article_images, article_images
)
insert_idx <- which(str_detect(readme, "<!--\\s+latex-article\\s+-->"))
readme <- c(
  readme[1:insert_idx[1]],
  article_md,
  readme[insert_idx[2]:length(readme)]
)

slides_md <- sprintf(
  '[<img src="%s" style="width: 100.0%%" />](%s)',
  slides_images, slides_images
)
insert_idx <- which(str_detect(readme, "<!--\\s+latex-slides\\s+-->"))
readme <- c(
  readme[1:insert_idx[1]],
  slides_md,
  readme[insert_idx[2]:length(readme)]
)

response_md <- sprintf(
  '[<img src="%s" style="width: 100.0%%" />](%s)',
  response_images, response_images
)
insert_idx <- which(str_detect(readme, "<!--\\s+referee-response\\s+-->"))
readme <- c(
  readme[1:insert_idx[1]],
  response_md,
  readme[insert_idx[2]:length(readme)]
)

xfun::write_utf8(readme, "README.md")
