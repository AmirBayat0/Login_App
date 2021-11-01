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
	'Dim S As Int
	Private EditText1 As EditText
	Private EditText2 As EditText
	
	Dim username As String 
	Dim Password As String
	
	Private forgot As Button
	Private ImageView1 As ImageView
	Private google As Intent 
	Private instgrm As Intent
	Private facebook As Intent
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("Login")
	'S = 0.005 
	'Sleep(S)
	Msgbox("For The First Time Logging In To The App [Username & Password] = 12345678","Help")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub Button1_Click
	
	Dim username As String = EditText1.Text
	Dim Password As String = EditText2.Text
	
	If username == "12345678" And Password == "12345678" Then
		Msgbox("You Are Login Now ","Congratulations!")
		Activity.Finish()
			StartActivity(HomePage)
	
	Else If	 username == "" And Password == "" Then
		Msgbox("You Must Fill in The Blanks","Error Happened!")
		
	Else
		Msgbox("Username and Password incorrect, Try Again","Error Happened!")
		
	End If

End Sub

Sub forgot_Click
	Activity.Finish()
	StartActivity(ForgotPage)
End Sub

Sub Button3_Click
	Activity.Finish()
		StartActivity(SignUp)
	
End Sub

Sub ImageView1_Click
		
	google.Initialize(google.ACTION_VIEW,"https://accounts.google.com/signin/v2/identifier?hl=en&continue=https%3A%2F%2Fmail.google.com&service=mail&ec=GAlAFw&flowName=GlifWebSignIn&flowEntry=AddSession")
	StartActivity(google)
	
End Sub

Sub ImageView2_Click
	instgrm.Initialize(instgrm.ACTION_VIEW,"https://www.instagram.com/accounts/login/")
	StartActivity(instgrm)
	
End Sub

Sub ImageView3_Click
	facebook.Initialize(facebook.ACTION_VIEW,"https://www.facebook.com/")
	StartActivity(facebook)
	
End Sub