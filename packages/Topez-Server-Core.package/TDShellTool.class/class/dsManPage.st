as yet unclassified
dsManPage
    ^ 'NAME
    ds - display object info

SYNOPSIS
    ds [path]

DESCRIPTION
    Display the object info for the given node. With no `path` specified the
    object info for the current node are listed. Otherwise the `path` is 
    resolved and the object info for the node is listed.

    The directory listing (a String) is returned.

    The ds command can only be used with internal nodes (directory-like).

    The ds command is analagous to the ls command except that object 
    info is displayed along with the names of the nodes. ds is useful
    when traversing object graphs.
'