Class {
	#name : 'EDivision',
	#superclass : 'EBinaryExpression',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'instance creation' }
EDivision class >> numerator: anExpression denominator: anExpression2 [

	^ self new
		  left: anExpression;
		  right: anExpression2
]

{ #category : 'visiting' }
EDivision >> accept: aVisitor [

	^ aVisitor visitDivision: self
]

{ #category : 'private' }
EDivision >> denominator [

	^ right
]

{ #category : 'private' }
EDivision >> numerator [

	^ left
]

{ #category : 'printing' }
EDivision >> operatorString [

	^ ' / '
]
