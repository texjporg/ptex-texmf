SRCDIR = source/platex/base
TEXDIR = tex/platex/base
DOCDIR = doc/platex/base

TARGET1 = platex.ltx jarticle.cls pl209.def platexrelease.sty \
	nidanfloat.sty tascmac.sty
TARGET2 = platex.pdf platexrelease.pdf pldoc.pdf \
	nidanfloat.pdf ascmac.pdf

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

PLREL = platexrelease.sty

PLREL_SRC = platexrelease.dtx $(PLFMT_SRC)

NIDAN = nidanfloat.sty

NIDAN_SRC = nidanfloat.dtx

ASCMAC = tascmac.sty ascmac.sty

ASCMAC_SRC = ascmac.dtx

INTRODOC_SRC = platex.dtx

PLRELDOC_SRC = platexrelease.dtx

PLDOC_SRC = platex.dtx plvers.dtx plfonts.dtx plcore.dtx plext.dtx \
	pl209.dtx kinsoku.dtx jclasses.dtx jltxdoc.dtx

$(TEXDIR)/platex.ltx: $(addprefix $(SRCDIR)/,$(PLFMT_SRC))
	cd $(SRCDIR); $(MAKE) platex.ltx
	for x in $(PLFMT); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(TEXDIR)/jarticle.cls: $(addprefix $(SRCDIR)/,$(PLCLS_SRC))
	cd $(SRCDIR); $(MAKE) jarticle.cls
	for x in $(PLCLS); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(TEXDIR)/pl209.def: $(addprefix $(SRCDIR)/,$(PL209_SRC))
	cd $(SRCDIR); $(MAKE) pl209.def
	for x in $(PL209); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(TEXDIR)/platexrelease.sty: $(addprefix $(SRCDIR)/,$(PLREL_SRC))
	cd $(SRCDIR); $(MAKE) platexrelease.sty
	for x in $(PLREL); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(TEXDIR)/nidanfloat.sty: $(addprefix $(SRCDIR)/,$(NIDAN_SRC))
	cd $(SRCDIR); $(MAKE) nidanfloat.sty
	for x in $(NIDAN); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(TEXDIR)/tascmac.sty: $(addprefix $(SRCDIR)/,$(ASCMAC_SRC))
	cd $(SRCDIR); $(MAKE) tascmac.sty
	for x in $(ASCMAC); do mv $(SRCDIR)/$$x $(TEXDIR); done

$(DOCDIR)/platex.pdf: $(addprefix $(SRCDIR)/,$(INTRODOC_SRC))
	cd $(SRCDIR); $(MAKE) platex.pdf
	mv $(SRCDIR)/platex.pdf $(DOCDIR)

$(DOCDIR)/platexrelease.pdf: $(addprefix $(SRCDIR)/,$(PLRELDOC_SRC))
	cd $(SRCDIR); $(MAKE) platexrelease.pdf
	mv $(SRCDIR)/platexrelease.pdf $(DOCDIR)

$(DOCDIR)/pldoc.pdf: $(addprefix $(SRCDIR)/,$(PLDOC_SRC))
	cd $(SRCDIR); $(MAKE) pldoc.pdf
	mv $(SRCDIR)/pldoc.pdf $(DOCDIR)
	mv $(SRCDIR)/jltxdoc.cls $(TEXDIR)

$(DOCDIR)/nidanfloat.pdf: $(addprefix $(SRCDIR)/,$(NIDAN_SRC))
	cd $(SRCDIR); $(MAKE) nidanfloat.pdf
	mv $(SRCDIR)/nidanfloat.pdf $(DOCDIR)

$(DOCDIR)/ascmac.pdf: $(addprefix $(SRCDIR)/,$(ASCMAC_SRC))
	cd $(SRCDIR); $(MAKE) ascmac.pdf
	mv $(SRCDIR)/ascmac.pdf $(DOCDIR)

.PHONY: clean
clean:
	for x in $(addprefix $(TEXDIR)/,$(PLFMT)) \
	$(addprefix $(TEXDIR)/,$(PLCLS)) \
	$(addprefix $(TEXDIR)/,$(PL209)) \
	$(addprefix $(TEXDIR)/,$(PLREL)) \
	$(addprefix $(TEXDIR)/,$(NIDAN)) \
	$(addprefix $(TEXDIR)/,$(ASCMAC)) \
	$(DOCDIR)/platex.pdf $(DOCDIR)/platexrelease.pdf $(DOCDIR)/pldoc.pdf \
	$(DOCDIR)/nidanfloat.pdf $(DOCDIR)/ascmac.pdf \
	$(TEXDIR)/jltxdoc.cls $(SRCDIR)/pldoc.tex $(SRCDIR)/Xins.ins; do \
	if [ -e $$x ]; then rm $$x; fi \
	done
