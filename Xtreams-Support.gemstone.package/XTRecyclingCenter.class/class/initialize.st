class initialization
initialize
	| cacheLimit |
	cacheSize := DefaultBufferSize.
	cacheLimit := 3.
	objectspace1 := self new initialize: cacheLimit.
	fixedspace1 := self new initialize: cacheLimit.
	objectspaceN := self new initialize: cacheLimit.
	fixedspaceN := self new initialize: cacheLimit