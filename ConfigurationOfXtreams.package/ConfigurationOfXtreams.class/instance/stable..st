symbolic versions
stable: spec 
	<symbolicVersion: #stable>

"NOTE: At the time of writing, Metacello cannot load a #stable version because there is no #stable ConfigurationOfFFI...
And the error message is not helpful..."

	spec
		for: #'gemstone' version: '1.1';
		for: #'squeak4.4.x' version: '1.3';
		for: #'squeak4.3.x' version: '1.3';
		for: #'squeak4.2.x' version: '1.0';
		for: #'pharo5.x' version: '1.3.1';
		for: #'pharo4.x' version: '1.3.1';
		for: #'pharo3.x' version: '1.3';
		for: #'pharo2.x' version: '1.2';
		for: #'pharo1.4.x' version: '1.2';
		for: #'pharo1.3.x' version: '1.2';
		for: #'pharo1.2.x' version: '1.0'

