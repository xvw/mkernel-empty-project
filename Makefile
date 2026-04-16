# Only for building slides

all: slides

slides: support/slides.md
	pandoc -o support/slides.pdf \
               -t beamer -V theme:default -V aspectratio:169 \
               support/slides.md
