Class {
	#name : 'RockPaperScissorsParamaterizedTest',
	#superclass : 'ParametrizedTestCase',
	#instVars : [
		'weapon',
		'opponent',
		'expected',
		'game'
	],
	#category : 'IsLoopRockPaperScissors-Tests',
	#package : 'IsLoopRockPaperScissors-Tests'
}

{ #category : 'building suites' }
RockPaperScissorsParamaterizedTest class >> testParameters [

	^ ParametrizedTestMatrix new
		  addCase: {
				  (#weapon -> Rock).
				  (#opponent -> Paper).
				  (#expected -> #paper) };
		  addCase: {
				  (#weapon -> Rock).
				  (#opponent -> Scissors).
				  (#expected -> #rock) };
		  addCase: {
				  (#weapon -> Rock).
				  (#opponent -> Spock).
				  (#expected -> #spock) };
		  addCase: {
				  (#weapon -> Rock).
				  (#opponent -> Lizard).
				  (#expected -> #rock) };
		  addCase: {
				  (#weapon -> Paper).
				  (#opponent -> Scissors).
				  (#expected -> #scissors) };
		  addCase: {
				  (#weapon -> Paper).
				  (#opponent -> Spock).
				  (#expected -> #paper) };
		  addCase: {
				  (#weapon -> Paper).
				  (#opponent -> Lizard).
				  (#expected -> #lizard) };
		  addCase: {
				  (#weapon -> Scissors).
				  (#opponent -> Spock).
				  (#expected -> #spock) };
		  addCase: {
				  (#weapon -> Scissors).
				  (#opponent -> Lizard).
				  (#expected -> #scissors) };
		  addCase: {
				  (#weapon -> Spock).
				  (#opponent -> Lizard).
				  (#expected -> #spock) };
		  addCase: {
				  (#weapon -> Lizard).
				  (#opponent -> Lizard).
				  (#expected -> #draw) };
		  yourself
]

{ #category : 'accessing' }
RockPaperScissorsParamaterizedTest >> expected: aSymbol [

	expected := aSymbol
]

{ #category : 'accessing' }
RockPaperScissorsParamaterizedTest >> opponent: aWeapon [

	opponent := aWeapon
]

{ #category : 'running' }
RockPaperScissorsParamaterizedTest >> setUp [

	super setUp.
	game := RockPaperScissors new
]

{ #category : 'tests' }
RockPaperScissorsParamaterizedTest >> testOpponentAgainstWeapon [

	| result |
	result := game play: opponent new against: weapon new.

	self assert: result equals: expected
]

{ #category : 'tests' }
RockPaperScissorsParamaterizedTest >> testWeaponAgainstItselfIsADraw [

	| result |
	result := game play: weapon new against: weapon new.

	self assert: result equals: #draw
]

{ #category : 'tests' }
RockPaperScissorsParamaterizedTest >> testWeaponAgainstOpponent [

	| result |
	result := game play: weapon new against: opponent new.

	self assert: result equals: expected
]

{ #category : 'accessing' }
RockPaperScissorsParamaterizedTest >> weapon: aSymbol [

	weapon := aSymbol
]
