pdfpages := octogon_on_platform.pdf octogon_on_floor.pdf octogon_on_floor_2_judges.pdf octogon_on_platform_2_judges.pdf

szabalyok.pdf : szabalyok.tex $(pdfpages)
	pdflatex szabalyok.tex

$(pdfpages): %.pdf : %.svg
	inkscape --export-type pdf $^
