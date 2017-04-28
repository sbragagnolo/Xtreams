as yet unclassified
testInterleavingEmptyStreamsRaisesIncomplete
	self should: [(#() reading interleaving: #() reading) read: 1] raise: Incomplete.