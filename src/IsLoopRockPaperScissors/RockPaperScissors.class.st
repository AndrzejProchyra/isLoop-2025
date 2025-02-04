Class {
	#name : 'RockPaperScissors',
	#superclass : 'Object',
	#instVars : [
		'winningConditions'
	],
	#category : 'IsLoopRockPaperScissors',
	#package : 'IsLoopRockPaperScissors'
}

{ #category : 'as yet unclassified' }
RockPaperScissors >> play: weaponOne against: weaponTwo [

	^ weaponOne playAgainst: weaponTwo
]
