MAKE         = make
LATEXMK      = latexmk
LATEXMKFLAG  = -halt-on-error
CP           = cp
RM           = rm
PANDOC       = pandoc
PANDOCFLAG   = -f markdown_github+footnotes+header_attributes-hard_line_breaks-intraword_underscores --latex-engine=lualatex --chapter --listings 

SRC          = main-lua
MD           = body

TARGET       = $(addsuffix .pdf, $(SRC))

TEXFILES     = ../../texfiles

CLASS        = word-lua
TEXDEPS      = $(foreach deps, word-lua.cls, $(TEXFILES)/$(deps))
LATEXMKFLAG += -pdf

TEXDTX       = $(addsuffix .dtx, $(TEXFILES)/$(CLASS))
TEXINS       = $(addsuffix .ins, $(TEXFILES)/$(CLASS))

.PHONY: all continue cls clean

all: $(SRC).pdf
	$(CP) $< main.pdf

$(SRC).pdf: $(SRC).tex $(MD).tex main.tex cls
	$(LATEXMK) $(LATEXMKFLAG) $<

$(MD).tex: $(MD).md
	$(PANDOC) $(PANDOCFLAG) -o $(MD).tex $<

continue:
	LATEXMKFLAG+=-pvc
	$(MAKE)

cls: $(TEXDTX) $(TEXINS)
	$(RM) -rf $(TEXDEPS)
	$(MAKE) $(CLASS) -C $(TEXFILES)
	$(CP) -r $(foreach deps, $(TEXDEPS), $(deps)) ./

clean:
	$(RM) -f $(TEXDEPS) $(MD).tex
	$(LATEXMK) -C

