Class {
	#name : 'ENegation',
	#superclass : 'EExpression',
	#instVars : [
		'expression'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'instance creation' }
ENegation class >> expression: anExpression [

	^ self new expression: anExpression
]

{ #category : 'public access' }
ENegation >> evaluate [

	^ expression evaluate negated
]

{ #category : 'instance creation' }
ENegation >> expression: anExpression [

	expression := anExpression
]

{ #category : 'arithmetic' }
ENegation >> negated [

	^ expression
]

{ #category : 'printing' }
ENegation >> printOn: aStream [

	aStream
		nextPutAll: '- ';
		print: expression
]
