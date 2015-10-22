STATICDIR = static

CSSDIR = $(STATICDIR)/css
CSS = $(CSSDIR)/style.min.css
LESSCSS = $(CSSDIR)/variables.less $(CSSDIR)/style.less $(CSSDIR)/print.less
PYGMENTS_CSS = $(CSSDIR)/pygments.min.css
PYGMENTS_STYLE ?= default

LESSC = lessc

all: css

css: $(CSS) $(PYGMENTS_CSS)

pygments:
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(LESSC) - > $(PYGMENTS_CSS)

$(PYGMENTS_CSS):
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(LESSC) - > $@

$(CSS): $(LESSCSS)
	$(LESSC) $< $@

.PHONY: pygments
