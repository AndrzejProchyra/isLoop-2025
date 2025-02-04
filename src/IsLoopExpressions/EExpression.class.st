Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'arithmetic' }
EExpression >> negated [

	^ ENegation new expression: self
]
