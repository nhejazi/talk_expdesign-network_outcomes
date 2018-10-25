TITLE = 2018_stat232_network_outcomes

.PHONY : build

build:
	Rscript -e "rmarkdown::render('$(TITLE).Rmd')"

web:
	rsync --chmod=go+r $(TITLE).pdf \
		nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE).pdf

