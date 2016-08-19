CLASS       = word-lua
TEXDEPS     = $(addsuffix .cls, $(CLASS))
TEXDTX      = $(addsuffix .dtx, $(CLASS))
TEXFILES    = texfiles
LATEXMK     = latexmk
LATEXMKFLAG = -halt-on-error -pdf
CP          = cp
MAKE        = make
ARTICLES    = $(wildcard articles/*)
SRC         = main

.PHONY: all clean

all: $(ARTICLES) $(SRC).pdf

$(ARTICLES): .FORCE
	$(MAKE) -C $@

$(SRC).pdf: $(SRC).tex $(TEXDEPS)
	$(LATEXMK) $(LATEXMKFLAG) $<

$(TEXDEPS): $(TEXFILES)/$(TEXDTX)
	$(RM) -rf $(TEXDEPS)
	$(MAKE) $(CLASS) -C $(TEXFILES)
	$(CP) $(TEXFILES)/$(TEXDEPS) ./

clean: $(SUBCLEAN)
	$(RM) -f $(TEXDEPS)
	$(foreach d, $(ARTICLES), $(MAKE) clean -C $(d);)
	$(LATEXMK) -C

.FORCE:
