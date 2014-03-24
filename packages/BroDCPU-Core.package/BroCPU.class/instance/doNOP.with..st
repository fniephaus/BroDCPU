operations
doNOP: b with: a
	"make word lookups in order to increase PC correctly"
	| savedSP |
	savedSP := self registerBank sp.
	self
		getWordFrom: a;
		getWordFrom: b.
	self registerBank sp: savedSP.