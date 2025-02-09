Class {
	#name : 'EPrintingVisitor',
	#superclass : 'EVisitor',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'visiting' }
EPrintingVisitor >> visitAddition: anEAddition [

	^ anEAddition printString
]

{ #category : 'visiting' }
EPrintingVisitor >> visitConstant: anEConstant [

	^ anEConstant value printString
]

{ #category : 'visiting' }
EPrintingVisitor >> visitDivision: anEDivision [

	^ anEDivision printString
]

{ #category : 'visiting' }
EPrintingVisitor >> visitMultiplication: anEMultiplication [

	^ anEMultiplication printString
]

{ #category : 'visiting' }
EPrintingVisitor >> visitVariable: anEVariable [

	^ bindings at: anEVariable id
]
