doits
preLoadSqueakEnsureGlobalUnderscoreSelectors

	originalUnderscoreSelectorsPreferenceValue := Scanner prefAllowUnderscoreSelectors.
	Scanner prefAllowUnderscoreSelectors: true.
	$_ tokenish ifFalse: [
		Character
			compile: 'tokenish
		"Answer whether the receiver is a valid token-character--letter, digit, or
		colon."

		^self == $_ or: [self == $: or: [self isLetter or: [self isDigit]]]'
			classified: 'testing'.
		String initialize ].