versions
version11: spec
	<version: '1.1' imports: #('1.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '- GemStone port
- tweak GemStone support'.
		spec author: 'dkh'.
		spec timestamp: '03/14/2011 12:30:49'.
		spec 
			package: 'Xtreams-Core' with: 'Xtreams-Core-DaleHenrichs.14';
			package: 'Xtreams-Transforms' with: 'Xtreams-Transforms-DaleHenrichs.17';
			package: 'Xtreams-Substreams' with: 'Xtreams-Substreams-DaleHenrichs.14';
			package: 'Xtreams-CoreTests' with: 'Xtreams-CoreTests-DaleHenrichs.16';
			package: 'Xtreams-TransformsTests' with: 'Xtreams-TransformsTests-DaleHenrichs.10';
			package: 'Xtreams-SubstreamsTests' with: 'Xtreams-SubstreamsTests-DaleHenrichs.9'. ].

	spec for: #'squeakCommon' do: [
		spec project: 'FFI' with: '1.4'.
		spec 
			package: 'Xtreams-Parsing' with: 'Xtreams-Parsing-Martin Kobetic.2';
			package: 'Xtreams-ParsingTests' with: 'Xtreams-ParsingTests-nice.1';
			package: 'Xtreams-Support' with: 'Xtreams-Support-MartinKobetic.7';
			package: 'Xtreams-Terminals' with: 'Xtreams-Terminals-MartinKobetic.22';
			package: 'Xtreams-TerminalsTests' with: 'Xtreams-TerminalsTests-MartinKobetic.11';
			package: 'Xtreams-Xtras' with: 'Xtreams-Xtras-ul.21';
			package: 'Xtreams-XtrasTests' with: 'Xtreams-XtrasTests-MartinKobetic.3'. ].

	spec for: #'gemstone' do: [
		spec 
			package: 'Xtreams-Support' with: 'Xtreams-Support.gemstone-dkh.11';
			package: 'Xtreams-Terminals' with: 'Xtreams-Terminals.gemstone-DaleHenrichs.24';
			package: 'Xtreams-TerminalsTests' with: 'Xtreams-TerminalsTests.gemstone-dkh.12'. ].
