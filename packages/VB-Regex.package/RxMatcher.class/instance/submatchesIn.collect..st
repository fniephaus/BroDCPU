match enumeration
submatchesIn: aString collect: aBlock
	"Search aString repeatedly for the matches of the receiver.  Evaluate aBlock for each match passing the collection of matched subexpressions as the argument, collecting evaluation results in an OrderedCollection."
	| result |
	result := OrderedCollection new.
	self
		submatchesOnStream: aString readStream
		do: [:subexprs | result add: (aBlock value: subexprs)].
	^result