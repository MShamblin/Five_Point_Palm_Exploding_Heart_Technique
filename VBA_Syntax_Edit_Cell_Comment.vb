Dim OldComment As Variant
Dim NewComment As Variant

OldComment = Sheet1.Range("A1").Comment.Text
NewComment = OldComment & " Edited comment"
    
Sheet1.Range("A1").Comment.Delete
    
Sheet1.Range("A1").AddComment (NewComment)