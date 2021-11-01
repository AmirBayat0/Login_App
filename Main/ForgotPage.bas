B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=8.8
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: True
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private email_bt As EditText
	Private resert_pas As Button
	
	Dim emailBT As String 
	
	
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("LForgot")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub resert_pas_Click
	emailBT = email_bt.Text
	
	
	
	If emailBT <> "" Then
		Msgbox("you will recive a link to create a new password via eamil ","Check Your Email Adress")
		Activity.Finish()
			StartActivity(LoginPage)
	
	Else
		Msgbox("Please enter your eamil adress correctly ","Failed")
	End If
	
	
	
	
		
End Sub

Sub Button1_Click
	Activity.Finish()
		StartActivity(LoginPage)
	
End Sub