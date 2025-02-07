Class {
	#name : 'EEvaluatingVisitor',
	#superclass : 'Object',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'visiting' }
EEvaluatingVisitor >> visitAddition: anEAddition [

	^ (anEAddition left accept: self) + (anEAddition right accept: self)
]

{ #category : 'visiting' }
EEvaluatingVisitor >> visitConstant: anEConstant [

	^ anEConstant value
]

{ #category : 'visiting' }
EEvaluatingVisitor >> visitDivision: anEDivision [

	| numeratorValue denominatorValue |
	numeratorValue := anEDivision numerator accept: self.
	denominatorValue := anEDivision denominator accept: self.

	denominatorValue = 0 ifTrue: [ EZeroDenominator signal ].

	^ numeratorValue / denominatorValue
]

{ #category : 'visiting' }
EEvaluatingVisitor >> visitMultiplication: anEMultiplication [

	^ (anEMultiplication left accept: self)
	  * (anEMultiplication right accept: self)
]

{ #category : 'visiting' }
EEvaluatingVisitor >> visitNegation: anENegation [

	^ (anENegation expression accept: self) negated
]
