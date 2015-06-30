STATICDIR = static

CSSDIR = $(STATICDIR)/css
STYLE_CSS = $(CSSDIR)/style.min.css
PYGMENTS_CSS = $(CSSDIR)/pygments.min.css
PYGMENTS_STYLE ?= default

LESSC = lessc -x

all: css

css: $(PYGMENTS_CSS) $(STYLE_CSS)

pygments:
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(LESSC) - > $(PYGMENTS_CSS)

$(PYGMENTS_CSS):
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(LESSC) - > $@

%.min.css: %.css
%.min.css: %.less
	$(LESSC) $< $@

.PHONY: pygments
