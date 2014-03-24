initialize-release
dismissMorph
	self cpu ifNotNil: [ self cpu terminate ].
	super dismissMorph.