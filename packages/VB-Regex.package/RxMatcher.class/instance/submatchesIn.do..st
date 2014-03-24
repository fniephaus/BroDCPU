match enumeration
submatchesIn: aString do: aBlock
	"Search aString repeatedly for the matches of the receiver.
	Evaluate aBlock for each match passing the collection of matched subexpressions
	as the argument."
	self
		submatchesOnStream: aString readStream
		do: aBlock