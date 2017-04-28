legacy API
nextMatchAll: subCollection
	^(self explore:
		[| pattern |
		pattern := subCollection reading.
		[[pattern get = self get ifFalse: [^false]] repeat]
			on: Incomplete do: [:exc | exc receiver == pattern]])
				and: [self ++ subCollection size. true]