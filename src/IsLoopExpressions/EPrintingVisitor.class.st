Class {
	#name : 'EPrintingVisitor',
	#superclass : 'EVisitor',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'visiting' }
EPrintingVisitor >> visitConstant: anEConstant [

	^ anEConstant value printString
]

{ #category : 'visiting' }
EPrintingVisitor >> visitVariable: anEVariable [

	^ bindings at: anEVariable id
]
