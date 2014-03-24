initialize-release
enableQueuing
	"interrupts are always queued, only dequeing is not possible when queueing is enabled -> no interrupts during ISRs"
	self isQueuingEnabled: true.