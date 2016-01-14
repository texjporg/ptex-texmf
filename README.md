# ptex-texmf

A set of additions to a standard TEXMF tree, for typesetting Japanese
publications using pTeX. The bundle includes fonts, Japanese BibTeX
styles, and Japanese versions of LaTeX classes and the like.

This bundle is a community edition, not the same as the original ASCII
edition. The bundle is maintained in the GitHub repository:

- https://github.com/texjporg/ptex-texmf

The original ASCII edition can be obtained from:

- http://ascii.asciimw.jp/pb/ptex/

## Documentation

The consise information about pLaTeX2e is provided in platex.pdf.
This document can be obtained by executing following commands:

~~~~
  platex platex.dtx
  dvipdfmx platex.dvi
~~~~

The conprehensive explanation of pLaTeX2e source is also included in
pldoc.pdf. If you are interested in typesettinng pldoc.tex yourself,
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
