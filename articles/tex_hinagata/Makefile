MAKE         = make
LATEXMK      = latexmk
LATEXMKFLAG  = -halt-on-error
CP           = cp
RM           = rm

SRC          = main

TARGET       = $(addsuffix .pdf, $(SRC))

TEXFILES     = ../../texfiles

CLASS        = word-lua
TEXDEPS      = $(foreach deps, word-lua.cls, $(TEXFILES)/$(deps))
LATEXMKFLAG += -pdf

TEXDTX       = $(addsuffix .dtx, $(TEXFILES)/$(CLASS))
TEXINS       = $(addsuffix .ins, $(TEXFILES)/$(CLASS))

.PHONY: all continue cls clean

all: $(SRC).pdf

%.pdf: %.tex cls
	$(LATEXMK) $(LATEXMKFLAG) $<

continue:
	LATEXMKFLAG+=-pvc
	$(MAKE)

cls: $(TEXDTX) $(TEXINS)
	$(RM) -rf $(TEXDEPS)
	$(MAKE) $(CLASS) -C $(TEXFILES)
	$(CP) -r $(foreach deps, $(TEXDEPS), $(deps)) ./

clean:
	$(RM) -f $(TEXDEPS)
	$(LATEXMK) -C

