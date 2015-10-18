STATICDIR = static

CSSDIR = $(STATICDIR)/css
CSS = $(CSSDIR)/style.min.css $(CSSDIR)/print.min.css
PYGMENTS_CSS = $(CSSDIR)/pygments.min.css
PYGMENTS_STYLE ?= default

LESSC = lessc

all: css

css: $(CSS) $(PYGMENTS_CSS)

pygments:
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(LESSC) - > $(PYGMENTS_CSS)

$(PYGMENTS_CSS):
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(LESSC) - > $@

%.min.css: %.css
%.min.css: %.less
	$(LESSC) $< $@

.PHONY: pygments
