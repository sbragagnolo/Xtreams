as yet unclassified
testInterleavingRemembersItsPlace
	| s |
	s := [1] reading interleaving: [2] reading.
	self assert: #(1 2 1) equals: (s read: 3).
	self assert: #(2 1 2) equals: (s read: 3).