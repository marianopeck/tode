actions
removeRepository: listElement selectedIndex: selectedIndex
  | repository |
  selectedIndex = 0
    ifTrue: [ ^ false ].
  repository := self repositories at: selectedIndex.
  self mcTool mrremoveRepository: repository from: self workingCopy.
  ^ #'refreshList'