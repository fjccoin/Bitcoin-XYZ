include .deosrc


all:
# =========================================================================== #
#	Description: The default rule.
#	Usage: `make` and/or `make all`
# =========================================================================== #
	@-rm -rf var/html/bitcoin-core.html
	@-cd ext/bitcoin-core && gitinspector --format html > ../../var/html/bitcoin-core.html
# =========================================================================== #


build:
# =========================================================================== #
#	Description: The build rule.
#	Usage: `make build`
# =========================================================================== #
	@echo $(call l,${cBl},${cGr}[${cPu}5${cGr}] ${cCy}$@)
# =========================================================================== #


docs:
# =========================================================================== #
#	Description: The docs rule.
#	Usage: `make docs`
# =========================================================================== #
	@echo $(call l,${cBl},${cGr}[${cPu}5${cGr}] ${cCy}$@)
	@-cd docs && $(MAKE)
# =========================================================================== #


bitcoin.team:
# =========================================================================== #
#	Description: The bitcoin.team rule.
#	Usage: `make bitcoin.team`
# =========================================================================== #
	@echo $(call l,${cBl},${cGr}[${cPu}5${cGr}] ${cCy}$@)
	@-cd app/bitcoin.team && $(MAKE)
# =========================================================================== #
