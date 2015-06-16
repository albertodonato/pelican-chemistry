STATICDIR = static
SRCDIR = src
SRCCSSDIR = $(SRCDIR)/css
CSSDIR = $(STATICDIR)/css

PYGMENTS_CSS = $(SRCCSSDIR)/pygments.css
PYGMENTS_STYLE ?= default

all: css

css: $(PYGMENTS_CSS) $(CSSDIR)/style.min.css

$(CSSDIR)/style.min.css : $(SRCCSSDIR)/style.less  
	lessc --verbose -x $< $@

pygments $(PYGMENTS_CSS):
	pygmentize -S $(PYGMENTS_STYLE) -f html > $(PYGMENTS_CSS)
