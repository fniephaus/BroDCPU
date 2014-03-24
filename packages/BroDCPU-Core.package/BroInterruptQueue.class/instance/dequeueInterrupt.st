accessing
dequeueInterrupt
	(self queue size isZero or: [ self isQueuingEnabled ]) ifTrue: [
		"will be ignored"
		 ^ 0 ].
	^ self queue removeFirst