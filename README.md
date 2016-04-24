# ptex-texmf

The ptex-texmf tree provides a set of additions to a standard TEXMF
tree for typesetting Japanese publications using pTeX. The bundle
includes fonts, Japanese BibTeX styles, Japanese versions of LaTeX
classes and macros (called pLaTeX2e), and the like.

The bundle is a community edition forked from the original ASCII
edition (ptex-texmf-2.5). The GitHub repository

- https://github.com/texjporg/ptex-texmf

is now maintained by Japanese TeX Development Community
(http://texjp.org).

The original ASCII edition can be obtained from:

- http://ascii.asciimw.jp/pb/ptex/

## Changes from the original ASCII edition

See the documents (platex.pdf, pldoc.pdf, platexrelease.pdf) for more information.

- Fix macros which are inconsistent with the latest e-pTeX (e.g. \footnote, tabular, \parbox, \underline).
- Fix several bugs in pLaTeX2e and ascmac.sty.
- Add platexrelease.sty. As with the latexrelease package, this package enables us to use the old versions of pLaTeX2e (from 2006/11/10 the ASCII edition).
- Include files and documents for e-pTeX.

## Documentation

A brief exposition of pLaTeX2e is provided in platex.pdf.
The document can be obtained by executing the following commands:

~~~~
  platex platex.dtx
  dvipdfmx platex.dvi
~~~~

The comprehensive explanation of pLaTeX2e source is included in
pldoc.pdf. If you are interested in typesetting pldoc.tex yourself,
the following commands will be helpful:

~~~~
  platex Xins.ins
  sh mkpldoc.sh
  dvipdfmx pldoc.dvi
~~~~

## Character encoding

All the text files containing Japanese characters in ptex-texmf are
encoded in ISO-2022-JP. This is because ISO-2022-JP encoded texts
are most suitable for the traditional pTeX engine.

## License

The bundle may be distributed and/or modified under the terms of
the 3-clause BSD license (see LICENSE).

Copyright (c) 2010 ASCII MEDIA WORKS

Copyright (c) 2016 Japanese TeX Development Community
