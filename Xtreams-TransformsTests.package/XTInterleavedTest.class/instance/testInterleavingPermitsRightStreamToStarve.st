as yet unclassified
testInterleavingPermitsRightStreamToStarve
	self assert: #(1 2 1 1) equals: (([1] reading interleaving: #(2) reading) read: 4).