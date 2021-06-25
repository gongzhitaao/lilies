LLP=lilypond

# We want the target name to be the PDF filename so that `make` can detect
# whether its dependences are changed.  However, `lilypond` program will
# automatically append suffix to the target name.  So we first add the suffix
# ".pdf" here, and remove it in the recipe.
TARGETS = $(addsuffix .pdf,$(basename $(wildcard **/*.ly)))

all: $(TARGETS)

%.pdf: %.ly
	$(LLP) -f pdf -o $(basename $@) $<

clean:
	rm -f *.pdf

.PHONY: all clean
