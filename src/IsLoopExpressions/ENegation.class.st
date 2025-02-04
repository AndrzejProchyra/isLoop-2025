Class {
	#name : 'ENegation',
	#superclass : 'EExpression',
	#instVars : [
		'expression'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'public access' }
ENegation >> evaluate [

	^ expression evaluate negated
]

{ #category : 'instance creation' }
ENegation >> expression: anExpression [

	expression := anExpression
]
