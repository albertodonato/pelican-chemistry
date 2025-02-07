STATICDIR = static

DEPENDENCIES = less less-plugin-clean-css

NODE_PATH = node_modules/.bin

CSSDIR = $(STATICDIR)/css
CSS = $(CSSDIR)/style.min.css
LESSDIR = less
LESS_CSS = $(wildcard $(LESSDIR)/*.less)

PYGMENTS_CSS = $(CSSDIR)/pygments.min.css
PYGMENTS_STYLE ?= default

build_css = $(NODE_PATH)/lessc $1 --clean-css="--s1 --advanced --compatibility=ie8" > $2

css: $(CSS) $(PYGMENTS_CSS)

pygments $(PYGMENTS_CSS):
	pygmentize -S $(PYGMENTS_STYLE) -f html | $(call build_css, -, $(PYGMENTS_CSS))

deps:
	npm install $(DEPENDENCIES)

$(CSS): $(LESS_CSS)

%.min.css: %.css
$(CSSDIR)/%.min.css: $(LESSDIR)/%.less
	$(call build_css, $<, $@)

.PHONY: css pygments deps
