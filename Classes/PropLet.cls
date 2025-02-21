VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PropLet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Implements Func1
'Kapselt eine Property Let, die einen Wert übergibt und keinen zurückliefert.
Private m_Obj As Object
Private m_PropName As String

Friend Sub New_(Obj As Object, PropName As String)
    Set m_Obj = Obj: m_PropName = PropName
End Sub
'Copy to MNew
'Public Function PropLet(Obj As Object, ByVal PropName As String) As PropLet
'    Set PropLet = New PropLet: PropLet.New_ Obj, PropName
'End Function

Public Property Let Invoke(Value)
    CallByName m_Obj, m_PropName, VbCallType.VbLet, Value
End Property

Private Function Func1_Invoke(Value As Variant) As Variant
    Me.Invoke = Value
End Function

