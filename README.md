# The Cathedral and the Bazaar epub builder

This is a Makefile which downloads docbook xml source files of [Eric S.
Raymond's essays](http://www.catb.org/~esr/writings/cathedral-bazaar/)
published in [O'Reilly book *The Cathedral and the
Bazaar*](http://shop.oreilly.com/product/9780596001087.do) and builds epub
ebook(s) out of it via [pandoc](https://pandoc.org/).

To build a book with all essays, run:

```
$ make book
```

While to build epub for each essay, run:

```
$ make standalone
```

## Copying

Permission is granted to copy, distribute and/or modify these documents under
the terms of the [Open Publication
License](https://en.wikipedia.org/wiki/Open_Publication_License).
