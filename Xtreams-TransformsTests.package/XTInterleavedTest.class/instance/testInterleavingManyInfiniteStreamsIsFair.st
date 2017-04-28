as yet unclassified
testInterleavingManyInfiniteStreamsIsFair
	| a b c s |
	a := [1] reading.
	b := [2] reading.
	c := [3] reading.
	s := XTInterleavedReadStream across: {a. b. c}.
	
	self assert: #(1 2 3 1 2 3 1) equals: (s read: 7).