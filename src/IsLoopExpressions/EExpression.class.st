Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
EExpression >> evaluateWith: aBindingDictionary [

	^ self subclassResponsibility
]

{ #category : 'arithmetic' }
EExpression >> negated [

	^ ENegation new expression: self
]
