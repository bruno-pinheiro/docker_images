docker run \
	-d -p 8787:8787 \
	-e ROOT=TRUE \
	-e PASSWORD=rstudio \
	-v $HOME:/home/rstudio \
	--name rgeo \
	--link=rselenium:rselenium \
	rocker/geospatial

