DOCUMENT=ydatex.tex  

all:
	rubber --pdf $(DOCUMENT)

clean:
	rubber --clean $(DOCUMENT)

watch:  
	fswatch -0 -r -I -i '.*\.tex$$' -e '.*\.*' . | xargs -0 -n1 make all
