SRCDIR = source/platex/base
TEXDIR = tex/platex/base
DOCDIR = doc/platex/base

TARGET1 = platex.ltx jarticle.cls jarticle.sty nidanfloat.sty
TARGET2 = platex.pdf pldoc.pdf

all: $(addprefix $(TEXDIR)/,$(TARGET1)) \
	$(addprefix $(DOCDIR)/,$(TARGET2))

PLFMT = platex.ltx plcore.ltx kinsoku.tex pldefs.ltx \
	jy1mc.fd jy1gt.fd jt1mc.fd jt1gt.fd plext.sty ptrace.sty

PLFMT_SRC = platex.dtx plvers.dtx plfonts.dtx plcore.dtx \
	kinsoku.dtx plext.dtx

PLCLS = jarticle.cls jreport.cls jbook.cls jsize10.clo \
	jsize11.clo jsize12.clo jbk10.clo jbk11.clo jbk12.clo \
	tarticle.cls treport.cls tbook.cls tsize10.clo \
	tsize11.clo tsize12.clo tbk10.clo tbk11.clo tbk12.clo

PLCLS_SRC = jclasses.dtx

PL209 = pl209.def oldpfont.sty jarticle.sty tarticle.sty \
	jbook.sty tbook.sty jreport.sty treport.sty

PL209_SRC = pl209.dtx

NIDAN = nidanfloat.sty

NIDAN_SRC = nidanfloat.dtx

INTRO_SRC = platex.dtx

DOC_SRC = platex.dtx plvers.dtx plfonts.dtx plcore.dtx plext.dtx \
	pl209.dtx kinsoku.dtx jclasses.dtx jltxdoc.dtx

$(TEXDIR)/platex.ltx: $(addprefix $(SRCDIR)/,$(PLFMT_SRC))
	cd $(SRCDIR); $(MAKE) platex.ltx
	for x in $(PLFMT); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(TEXDIR)/jarticle.cls: $(addprefix $(SRCDIR)/,$(PLCLS_SRC))
	cd $(SRCDIR); $(MAKE) jarticle.cls
	for x in $(PLCLS); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(TEXDIR)/jarticle.sty: $(addprefix $(SRCDIR)/,$(PL209_SRC))
	cd $(SRCDIR); $(MAKE) jarticle.sty
	for x in $(PL209); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(TEXDIR)/nidanfloat.sty: $(addprefix $(SRCDIR)/,$(NIDAN_SRC))
	cd $(SRCDIR); $(MAKE) nidanfloat.sty
	for x in $(NIDAN); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(DOCDIR)/platex.pdf: $(addprefix $(SRCDIR)/,$(INTRO_SRC))
	cd $(SRCDIR); $(MAKE) platex.pdf
	mv $(SRCDIR)/platex.pdf $(DOCDIR)

$(DOCDIR)/pldoc.pdf: $(addprefix $(SRCDIR)/,$(DOC_SRC))
	cd $(SRCDIR); $(MAKE) pldoc.pdf
	mv $(SRCDIR)/pldoc.pdf $(DOCDIR)
	mv $(SRCDIR)/jltxdoc.cls $(TEXDIR)
