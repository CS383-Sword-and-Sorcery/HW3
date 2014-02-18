.PHONY: clean pdf png

pdf: classdiagrams_b.pdf
png: pngs/Map.png

pngs/%.png: pu/%.pu
	java -jar plantuml.jar -o ../pngs/ $<

classdiagrams_b.pdf: classdiagrams_b.tex pngs/Map.png
	pdflatex classdiagrams_b.tex

clean:
	rm classdiagrams_b.pdf
	rm pngs/*
	rm classdiagrams_b.aux
	rm classdiagrams_b.log

