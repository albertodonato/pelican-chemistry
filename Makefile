STATICDIR = static

CSSDIR = $(STATICDIR)/css
CSS = $(CSSDIR)/style.min.css
LESSCSS = $(wildcard $(CSSDIR)/*.less)
PYGMENTS_CSS = $(CSSDIR)/pygments.min.css
PYGMENTS_STYLE ?= default

LESSC = lessc --clean-css="--s1 --advanced --compatibility=ie8"


css: $(CSS) $(PYGMENTS_CSS)

pygments $(PYGMENTS_CSS):
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(LESSC) - > $(PYGMENTS_CSS)

$(CSS): $(LESSCSS)

%.min.css: %.css
%.min.css: %.less
	$(LESSC) $< $@

.PHONY: css pygments
