as yet unclassified
testInterleavingPermitsAnyStreamToStarve
	| a b c s |
	a := [1] reading.
	b := #() reading.
	c := [3] reading.
	s := XTInterleavedReadStream across: {a. b. c}.
	
	self assert: #(1 3 1 3 1) equals: (s read: 5).