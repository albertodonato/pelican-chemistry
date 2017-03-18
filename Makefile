STATICDIR = static

CSSDIR = $(STATICDIR)/css
CSS = $(CSSDIR)/style.min.css
LESS_CSS = $(wildcard $(CSSDIR)/*.less)
PYGMENTS_CSS = $(CSSDIR)/pygments.min.css
PYGMENTS_STYLE ?= default

build_css = lessc $1 | cleancss -o $2


css: $(CSS) $(PYGMENTS_CSS)

pygments $(PYGMENTS_CSS):
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(call build_css, -, $(PYGMENTS_CSS))

$(CSS): $(LESS_CSS)

%.min.css: %.css
%.min.css: %.less
	$(call build_css, $<, $@)

.PHONY: css pygments
