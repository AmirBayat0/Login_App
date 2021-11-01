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

	Private EditText1 As EditText
	Private EditText2 As EditText
	Private EditText3 As EditText
	Private EditText4 As EditText
	Private EditText5 As EditText
	Private CheckBox1 As CheckBox
	
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("Lsign")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub Button2_Click
	Activity.Finish()
		StartActivity(LoginPage)
End Sub

Sub Button1_Click
	
	If EditText1.Text == "" And EditText2.Text == "" And EditText3.Text == "" And EditText4.Text == "" And EditText5.Text == "" Then
		Msgbox("You Must Fill in The Blanks","Error Happened!")
		
	Else If EditText1.Text <> "" And EditText2.Text <> "" And EditText3.Text <> "" And EditText4.Text <> "" And EditText5.Text <> "" And CheckBox1.Checked=True Then
		Msgbox("Your registration is complete","Congratulations!")
		Activity.Finish()
			StartActivity(LoginPage)
		
	Else If EditText1.Text <> "" And EditText2.Text <> "" And EditText3.Text <> "" And EditText4.Text <> "" And EditText5.Text <> "" And CheckBox1.Checked=False Then
		Msgbox("you Must fill the checkbox","Help")
		
	End If
	
End Sub