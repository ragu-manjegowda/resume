#!/bin/bash

cd /mnt/

## Copy original resume css in case upstream has changed.
# R -e 'file.copy(pagedown:::pkg_resource("css", "resume.css"), "custom_resume.css")'

R -e 'pagedown::chrome_print(rmarkdown::render("resume.Rmd", output_file = "resume.html"), extra_args = c("--no-sandbox"))'

