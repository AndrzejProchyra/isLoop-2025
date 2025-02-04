Class {
	#name : 'RockPaperScissorsTest',
	#superclass : 'TestCase',
	#instVars : [
		'game'
	],
	#category : 'IsLoopRockPaperScissors-Tests',
	#package : 'IsLoopRockPaperScissors-Tests'
}

{ #category : 'running' }
RockPaperScissorsTest >> setUp [

	super setUp.
	game := RockPaperScissors new
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPapeBeatsRock [

	| result |
	result := game play: Paper new against: Rock new.

	self assert: result equals: #paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperAgainstPaperIsADraw [

	| result |
	result := game play: Paper new against: Paper new.

	self assert: result equals: #draw
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperBeatsRock [

	| result |
	result := game play: Paper new against: Rock new.

	self assert: result equals: #paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperBeatsSpock [

	| result |
	result := game play: Paper new against: Spock new.

	self assert: result equals: #paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperIsBeatenByLizard [

	| result |
	result := game play: Paper new against: Lizard new.

	self assert: result equals: #lizard
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperIsBeatenByScissors [

	| result |
	result := game play: Paper new against: Scissors new.

	self assert: result equals: #scissors
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockAgainstRockIsADraw [

	| result |
	result := game play: Rock new against: Rock new.

	self assert: result equals: #draw
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockBeatsLizard [
	| result |
	result := game play: Rock new against: Lizard new.

	self assert: result equals: #rock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockBeatsScissors [

	| result |
	result := game play: Rock new against: Scissors new.

	self assert: result equals: #rock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockIsBeatenByPaper [

	| result |
	result := game play: Rock new against: Paper new.

	self assert: result equals: #paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockIsBeatenBySpock [
	| result |
	result := game play: Rock new against: Spock new.

	self assert: result equals: #spock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsAgainstScissorsIsADraw [

	| result |
	result := game play: Scissors new against: Scissors new.

	self assert: result equals: #draw
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsAreBeatenByRock [

	| result |
	result := game play: Scissors new against: Rock new.

	self assert: result equals: #rock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsAreBeatenBySpock [

	| result |
	result := game play: Scissors new against: Spock new.

	self assert: result equals: #spock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsBeatLizard [

	| result |
	result := game play: Scissors new against: Lizard new.

	self assert: result equals: #scissors
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsBeatPaper [

	| result |
	result := game play: Scissors new against: Paper new.

	self assert: result equals: #scissors
]
