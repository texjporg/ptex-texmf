# ptex-texmf

The ptex-texmf tree provides a set of additions to a standard TEXMF
tree for typesetting Japanese publications using pTeX. The bundle
includes fonts, Japanese BibTeX styles, Japanese versions of LaTeX
classes and macros (called pLaTeX2e), and the like.

The bundle is a community edition, not the same as the original ASCII
edition. The GitHub repository

- https://github.com/texjporg/ptex-texmf

is now maintained by Japanese TeX Development Community
(http://texjp.org).

The original ASCII edition can be obtained from:

- http://ascii.asciimw.jp/pb/ptex/

## Documentation

A brief exposition of pLaTeX2e is provided in platex.pdf.
The document can be obtained by executing following commands:

~~~~
  platex platex.dtx
  dvipdfmx platex.dvi
~~~~

The comprehensive explanation of pLaTeX2e source is included in
pldoc.pdf. If you are interested in typesetting pldoc.tex yourself,
following commands will be helpful:

~~~~
  platex Xins.ins
  sh mkpldoc.sh
  dvipdfmx pldoc.dvi
~~~~

## License

The bundle may be modified or distributed under the terms of the
3-clause BSD license (see LICENSE).

Copyright (c) 2010 ASCII MEDIA WORKS

Copyright (c) 2016 Japanese TeX Development Community
