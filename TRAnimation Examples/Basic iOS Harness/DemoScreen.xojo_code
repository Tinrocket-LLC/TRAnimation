#tag MobileScreen
Begin MobileScreen DemoScreen
   BackButtonCaption=   ""
   Compatibility   =   "(TargetIOS and (Target64Bit))"
   ControlCount    =   0
   Device = 12
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   False
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Untitled"
   Top             =   0
   Begin MobileCanvas BackgroundColorCanvas
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowKeyEvents  =   False
      AutoLayout      =   BackgroundColorCanvas, 4, <Parent>, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   BackgroundColorCanvas, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   BackgroundColorCanvas, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   BackgroundColorCanvas, 3, BottomLayoutGuide, 3, False, +1.00, 4, 1, -10, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   10
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      TintColor       =   &c000000
      Top             =   886
      Visible         =   True
      Width           =   414
   End
   Begin TRAnimationCanvasMobile TRAnimationCanvasMobile1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowKeyEvents  =   False
      AutoLayout      =   TRAnimationCanvasMobile1, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TRAnimationCanvasMobile1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TRAnimationCanvasMobile1, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TRAnimationCanvasMobile1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      BackgroundColor =   &c33669900
      ControlCount    =   0
      Enabled         =   True
      Height          =   831
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   65
      Visible         =   True
      Width           =   414
   End
   Begin Timer LoadDemoTimer
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   0
      RunMode         =   1
      Scope           =   0
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Closing()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  
		  // TODO: This is not going to update the layout because the layout still has the old size; use my TRLayoutTimer
		  'TRAnimationCanvasMobile1.Core.UpdateLayout
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LoadDemo(demoIndex as Integer)
		  Dim demos(-1) As String = DemoManager.Demos
		  
		  DemoManager.RunDemo(demos(demoIndex), TRAnimationCanvasMobile1)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DefaultDemo As Integer = 0
	#tag EndProperty


#tag EndWindowCode

#tag Events BackgroundColorCanvas
	#tag Event
		Sub Paint(g As Graphics)
		  
		  // We just need something to fill the home indicator area with a background color
		  g.DrawingColor = TRAnimationCanvasMobile1.BackgroundColor
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LoadDemoTimer
	#tag Event
		Sub Run()
		  
		  // Demo must be loaded from Timer; the screen's Opening event won't have the correct size of the contents
		  // which will mess up the demo's camera (it needs the animation controls width and height)
		  // This timer will fire after the window has been laid out
		  
		  Self.LoadDemo(Self.DefaultDemo)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultDemo"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
