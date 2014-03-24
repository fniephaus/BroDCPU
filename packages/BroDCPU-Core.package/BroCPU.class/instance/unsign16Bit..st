numeric-functions
unsign16Bit: anInteger 
	"Returns real value of signed 16bit"
	anInteger // 2r1000000000000000 = 1
		ifTrue: [ ^ (anInteger \\ 16r10000) - 16r10000 ].
	^ anInteger