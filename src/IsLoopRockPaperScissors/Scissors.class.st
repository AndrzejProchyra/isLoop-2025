Class {
	#name : 'Scissors',
	#superclass : 'Weapon',
	#category : 'IsLoopRockPaperScissors',
	#package : 'IsLoopRockPaperScissors'
}

{ #category : 'as yet unclassified' }
Scissors >> playAgainst: anotherWeapon [

	^ anotherWeapon playAgainstScissors
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstLizard [

	^ #scissors
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

{ #category : 'as yet unclassified' }
Scissors >> playAgainstSpock [

	^ #spock
]
