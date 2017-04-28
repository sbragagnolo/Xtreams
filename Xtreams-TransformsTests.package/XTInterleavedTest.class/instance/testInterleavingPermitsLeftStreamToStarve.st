as yet unclassified
testInterleavingPermitsLeftStreamToStarve
	self assert: #(1 2 2 2) equals: ((#(1) reading interleaving: [2] reading) read: 4).