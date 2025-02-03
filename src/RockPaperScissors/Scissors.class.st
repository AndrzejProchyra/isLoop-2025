Class {
	#name : 'Scissors',
	#superclass : 'Weapon',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Scissors >> playAgainst: anotherWeapon [

	^ anotherWeapon playAgainstScissors
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstPaper [

	^ #scissors
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstRock [

	^ #rock
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstScissors [

	^ #draw
]
