Class {
	#name : 'EPrintingVisitor',
	#superclass : 'Object',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'visiting' }
EPrintingVisitor >> visitConstant: anEConstant [

	^ anEConstant value printString
]
