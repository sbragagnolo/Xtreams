testing
testBoundlessExploreClip
	self output
		explore: [
			self output
				position: 9;
				write: 10];
		write: #[1 2 3 4 5 6 7 8 9];
		close.
	self assert: self input rest = #[1 2 3 4 5 6 7 8 9]