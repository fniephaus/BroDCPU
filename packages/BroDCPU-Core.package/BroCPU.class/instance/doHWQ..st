special-operations
doHWQ: a
	| hardwareDevice hardwareNumber |
	hardwareNumber := self getWordFrom: a.
	((hardwareNumber > self hardware size) or: [ hardwareNumber = 0 ])
		ifTrue: [
			16r0 to: 16r4 do: [ :index | self registerBank set: index to: 16r0 ]]
		ifFalse: [
			hardwareDevice := (self hardware at: hardwareNumber).
			self registerBank
				set: 16r0 to: (hardwareDevice class hardwareID bitAnd: 16rffff);
				set: 16r1 to: hardwareDevice class hardwareID // 16r10000;
				set: 16r2 to: hardwareDevice class hardwareVersion;
				set: 16r3 to: (hardwareDevice class hardwareVendor bitAnd: 16rffff);
				set: 16r4 to: hardwareDevice class hardwareVendor // 16r10000 ].