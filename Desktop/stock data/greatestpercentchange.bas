Attribute VB_Name = "Module5"
Sub greatestpinc()

    Dim ws As Worksheet
    Dim maxNumber As Double
    Dim lastrow As Long
    Dim ticker As String
    Dim i As Long
    Dim maxNumberRow As Long

    For Each ws In Worksheets
        maxNumber = 0
        lastrow = ws.Cells(ws.Rows.Count, 10).End(xlUp).Row
        
        For i = 2 To lastrow
            If ws.Cells(i, 10).Value > maxNumber Then
                maxNumber = ws.Cells(i, 10).Value
                maxNumberRow = i
            End If
        Next i
        
        If maxNumberRow > 0 Then
            ticker = ws.Cells(maxNumberRow, 8).Value
           
            ws.Cells(2, 16).Value = maxNumber
            ws.Cells(2, 15).Value = ticker
        End If
    Next ws

End Sub
