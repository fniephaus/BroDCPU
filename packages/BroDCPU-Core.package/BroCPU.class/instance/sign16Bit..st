numeric-functions
sign16Bit: anInteger
	"Returns signed integer value of the actual 16bit value"
	anInteger < 0
		ifTrue: [ ^ 16r10000 + anInteger ].
	^ anInteger