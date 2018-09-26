DOC = 2018_expdesign_networks

.PHONY : build

build:
	Rscript -e "rmarkdown::render('$(DOC).Rmd')"

