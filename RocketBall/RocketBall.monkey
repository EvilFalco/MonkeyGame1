Import mojo

Function Main ()
	New Game	
End

Class Game Extends App
	
	Field player:Image
	Field x#
	Field y#
	
	Method OnCreate ()
		player = LoadImage ("boing.png")
		SetUpdateRate 60
	End
	
	Method OnUpdate ()
		If KeyDown (KEY_LEFT) Then x = x - 4
		If KeyDown (KEY_RIGHT) Then x = x + 4
		If KeyDown (KEY_UP) Then y = y - 4
		If KeyDown (KEY_DOWN) Then y = y + 4
	End
	
	Method OnRender ()
		Cls 64, 69, 128
		DrawImage player, x, y
		Print "x = "+x
		Print "y = "+y
	End

End
		