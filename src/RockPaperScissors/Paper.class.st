Class {
	#name : 'Paper',
	#superclass : 'Weapon',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Paper >> playAgainst: anotherWeapon [

	^ anotherWeapon playAgainstPaper
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstPaper [

	^ #draw
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstRock [

	^ #paper
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstScissors [

	^ #scissors
]
