browse
browseClassHierarchy: aClass label: windowLabel
  true
    ifTrue: [ 
      ^ aClass asTDClassDefinition
        editUsing:
          ((TDEditorSpec topez: topez editorAspect: #'classicHierarchyList')
            windowName: #'hierarchy';
            windowLabel: windowLabel;
            yourself) ]
    ifFalse: [ 
      ^ aClass asTDClassDefinition
        editUsing:
          ((TDEditorSpec topez: topez editorAspect: #'hierarchyList')
            windowName: #'hierarchy';
            windowLabel: windowLabel;
            yourself) ]