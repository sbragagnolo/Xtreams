initialize-release
initialize
	self makeNonviewableInstances.
	SessionManager default registerToolClassNamed: self name