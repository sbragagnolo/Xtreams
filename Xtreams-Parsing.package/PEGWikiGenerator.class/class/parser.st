accessing
parser

	^Parser parserPEG
		parse: 'Grammar'
		stream: Parser grammarWiki reading
		actor: PEGParserParser new