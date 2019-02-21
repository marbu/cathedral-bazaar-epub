essays = introduction hacker-history cathedral-bazaar homesteading magic-cauldron hacker-revenge afterword

.PRECIOUS: $(addsuffix .xml, $(essays))
.PHONY: clean

book: book-cathedral-bazaar.epub

standalone: $(addsuffix .epub, $(essays))

clean:
	-rm *.epub book-cathedral-bazaar.xml *.book.xml

book-cathedral-bazaar.xml: book.xml $(addsuffix .book.xml, $(essays))
	xmllint --xinclude --nowarning --recover $< --output $@

%.book.xml: %.xml
	awk -f drop-standalone-metadata.awk $? > $@
	sed -i 's/&ndash;/\&#8211;/g' $@
	sed -i 's/&mdash;/\&#8212;/g' $@
	sed -i 's/&eacute;/\&#233;/g' $@
	sed -i 's/&oacute;/\&#243;/g' $@

%.epub: %.xml
	pandoc -f docbook -t epub -s $? -o $@

%.xml:
	wget http://www.catb.org/~esr/writings/cathedral-bazaar/$@
