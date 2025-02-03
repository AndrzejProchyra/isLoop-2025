Class {
	#name : 'RockPaperScissors',
	#superclass : 'Object',
	#instVars : [
		'winningConditions'
	],
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
RockPaperScissors >> play: weaponOne against: weaponTwo [

	^ weaponOne playAgainst: weaponTwo
]
