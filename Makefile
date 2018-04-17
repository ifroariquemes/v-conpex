DIR=$(sort $(dir $(wildcard artigos/*/)))
	
all:
	$(foreach dir, $(DIR), make -C $(dir);)

clean:
	$(foreach dir, $(DIR), $(RM) $(dir)*.pdf $(dir)*.aux $(dir)*.log $(dir)*.synctex $(dir)*.gz;)