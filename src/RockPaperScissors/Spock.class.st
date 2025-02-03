Class {
	#name : 'Spock',
	#superclass : 'Weapon',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Spock >> playAgainst: opponent [

	^ opponent playAgainstSpock
]

{ #category : 'as yet unclassified' }
Spock >> playAgainstLizard [

	^ #spock
]

{ #category : 'as yet unclassified' }
Spock >> playAgainstPaper [

	^ #paper
]

{ #category : 'as yet unclassified' }
Spock >> playAgainstRock [

	^ #spock
]

{ #category : 'as yet unclassified' }
Spock >> playAgainstScissors [

	^ #spock
]

{ #category : 'as yet unclassified' }
Spock >> playAgainstSpock [

	^ #draw
]
