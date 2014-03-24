initialize-release
clockProcessWithFrequency: aFrequency
	self clockProcess: [
		| delay |
		delay := Delay forMilliseconds: (self class frequencyToMilliseconds: aFrequency).
		self isClockRunning: true.
		delay wait.
		[ self isClockRunning ] whileTrue: [
			self internalClock: self internalClock + 1.
			self areInterruptsEnabled ifTrue: [
				self interruptQueue enqueueInterrupt: self interruptMessage ].
			delay wait ]] newProcess.