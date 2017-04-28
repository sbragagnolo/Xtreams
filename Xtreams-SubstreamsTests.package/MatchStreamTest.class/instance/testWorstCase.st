tests
testWorstCase

	| stream result |
	stream := 'abaabaaabaaaabaaaaabaaaabaaabaabab' reading.
	result := (stream ending: 'aaaaab') rest.
	self assert: result = 'abaabaaabaaaab'