as yet unclassified
example

	| wikiGrammar wikiParser input output |
	wikiGrammar := PEGParser grammarWiki reading positioning.
	wikiParser := PEGParser parserPEG parse: 'Grammar' stream: wikiGrammar actor: PEGParserParser new.

	input := 'Single paragraph with *bold* and _italic_ text and a [link]' reading.
	output := wikiParser parse: 'Page' stream: input actor: PEGWikiGenerator new.
	output inspect