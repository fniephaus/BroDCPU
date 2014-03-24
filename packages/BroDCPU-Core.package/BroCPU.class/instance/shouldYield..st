main-loop
shouldYield: instructionCounter
	^ instructionCounter \\ self class cpuYieldCycles = 0