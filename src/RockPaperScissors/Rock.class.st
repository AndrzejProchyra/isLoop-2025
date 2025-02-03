Class {
	#name : 'Rock',
	#superclass : 'Weapon',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Rock >> playAgainst: anotherWeapon [

	^ anotherWeapon playAgainstRock
]

{ #category : 'as yet unclassified' }
Rock >> playAgainstPaper [

	^ #paper
]

{ #category : 'as yet unclassified' }
Rock >> playAgainstRock [

	^ #draw
]

{ #category : 'as yet unclassified' }
Rock >> playAgainstScissors [

	^ #rock
]
