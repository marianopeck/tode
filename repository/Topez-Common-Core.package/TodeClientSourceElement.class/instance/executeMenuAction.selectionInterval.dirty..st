as yet unclassified
executeMenuAction: aSymbol selectionInterval: aSelectionInterval dirty: dirty
	^ self topez
		executeMenuActionForClientSourceElement: self
		action: aSymbol
		selectionInterval: aSelectionInterval
		dirty: dirty