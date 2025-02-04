Class {
	#name : 'Lizard',
	#superclass : 'Weapon',
	#category : 'IsLoopRockPaperScissors',
	#package : 'IsLoopRockPaperScissors'
}

{ #category : 'as yet unclassified' }
Lizard >> playAgainst: opponent [

	^ opponent playAgainstLizard
]

{ #category : 'as yet unclassified' }
Lizard >> playAgainstLizard [

	^ #draw
]

{ #category : 'as yet unclassified' }
Lizard >> playAgainstPaper [

	^ #lizard
]

{ #category : 'as yet unclassified' }
Lizard >> playAgainstRock [

	^ #rock
]

{ #category : 'as yet unclassified' }
Lizard >> playAgainstScissors [

	^ #scissors
]

{ #category : 'as yet unclassified' }
Lizard >> playAgainstSpock [

	^ #spock
]
