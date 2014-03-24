main-loop
mainLoop
	| fetchedWord instructionCounter |
	instructionCounter := 0.
	[ (fetchedWord := self fetch) isZero ] whileFalse: [
		(self shouldYield: instructionCounter) ifTrue: [
			(Delay forMilliseconds: self class cpuWaitMilliseconds) wait ].
		instructionCounter := instructionCounter + 1.
		(self justProcessedInterrupt)
			ifTrue: [
				self
					processNextInstruction: fetchedWord;
					justProcessedInterrupt: false ]
			ifFalse: [
				(self handleInterrupt: self interruptQueue dequeueInterrupt) ifFalse: [
					self processNextInstruction: fetchedWord ]]].