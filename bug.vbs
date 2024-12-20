Late Binding:  VBScript's late binding can lead to runtime errors that are difficult to debug during development. If you use an object without explicitly declaring its type, errors might only surface when the code interacts with a specific object instance.  This makes pinpointing the problem hard because the error won't be caught by the compiler.

Example:
```vbscript
Set obj = CreateObject("SomeObject.Class") 'Late Binding
obj.SomeMethod 0
```
If "SomeObject.Class" is not correctly registered or the method doesn't exist, this would cause a runtime error.

Implicit Type Conversion Issues: VBScript's loose typing can result in unexpected data type conversions during arithmetic operations or comparisons. This often leads to inaccurate results. For instance, comparing a string to a number without explicit type conversion might not yield the expected boolean result.  This subtle error is easy to overlook.

Example:
```vbscript
if "10" = 10 then  'String compared to a Number
  msgbox "Equal!" 'Incorrect Result
end if
```

Error Handling Limitations: VBScript's error handling mechanism using `On Error Resume Next` can mask errors, making them harder to trace and fix. While convenient, it can lead to unexpected behavior if not handled carefully.  It can prevent the program from stopping on a critical error, only for that to become apparent later.

Example:
```vbscript
On Error Resume Next
Set obj = CreateObject("NonExistentObject")
If Err.Number <> 0 Then
  msgbox "Error creating object!"
end if
'Program continues even though there was an error. 
```