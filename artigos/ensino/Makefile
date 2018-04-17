SRC=$(basename $(wildcard *.tex))

define art_loop
	$(if $(wildcard $(art).pdf), ,pdflatex $(art).tex;)
endef
	
all:
	$(foreach art, $(SRC), $(call art_loop, $art))

clean:
	$(RM) *.pdf *.aux *.log *.synctex *.gz