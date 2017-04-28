legacy API
match: subCollection
	| pattern |
	pattern := subCollection reading.
	^[[pattern get = self get 
			ifFalse:
				[self -- (pattern position - 1).
				pattern += 0]] repeat]
		on: Incomplete do: [:exc | exc receiver == pattern]