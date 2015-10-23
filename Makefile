STATICDIR = static

CSSDIR = $(STATICDIR)/css
CSS = $(CSSDIR)/style.min.css $(CSSDIR)/print.min.css
PYGMENTS_CSS = $(CSSDIR)/pygments.min.css
PYGMENTS_STYLE ?= default

LESSC = lessc --clean-css="--s1 --advanced --compatibility=ie8"

css: $(CSS) $(PYGMENTS_CSS)

pygments $(PYGMENTS_CSS):
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(LESSC) - > $(PYGMENTS_CSS)

%.min.css: %.css
%.min.css: %.less
	$(LESSC) $< $@

.PHONY: css pygments
