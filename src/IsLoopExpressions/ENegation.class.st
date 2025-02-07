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

{ #category : 'visiting' }
ENegation >> accept: aVisitor [

	^ aVisitor visitNegation: self
]

{ #category : 'public access' }
ENegation >> evaluateWith: anObject [

	^ (expression evaluateWith: anObject ) negated
]

{ #category : 'accessing' }
ENegation >> expression [

	^ expression
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
