special-operations
doJSR: a
	| word |
	word := self getWordFrom: a.
	self push: self registerBank pc.
	self registerBank pc: word.