sources = \
A1.md A2.md A3.md A4.md A5.md A6.md A7.md A8.md A9.md \
A10.md A11.md A12.md A13.md A14.md A15.md A16.md A17.md \
A18.md A19.md A20.md A21.md A22.md A23.md A24.md

Rules.pdf : $(sources) Rules.yaml preamb.tex
	pandoc -d Rules.yaml

Rules.tex : $(sources) RulesTEX.yaml preamb.tex
	pandoc -d RulesTEX.yaml
