as yet unclassified
commit
  | active commitMessageNode commitMessage |
  commitMessageNode := self commitMessageNode.
  commitMessage := commitMessageNode dotSelfObject asString.
  active := self activeNode.
  ^ active dotSelfObject
    collect: [ :projectName | 
      (self commitProject: projectName message: commitMessage)
        ifTrue: [ 
          (self gitPathFor: projectName) notNil
            ifTrue: [ self postCommitForGitRepo: projectName ]
            ifFalse: [ self postCommitFor: projectName message: commitMessage ] ]
        ifFalse: [ projectName , ' not committed' ] ]