sub init()
m.firstScreen=m.top.findNode("firstScreen")
m.descriptText=m.top.findNode("descriptText")
m.contenido=m.top.findNode("contenido")
m.videoScene=m.top.findNode("videoScene")
m.contenido.setFocus(true)
m.contenido.observefield("buttonselected" , "showSecondScreen")
end sub



' function onKeyEvent(key as String, press as Boolean) as Boolean
'     handled = false
    
'     if press then
'         ' Verificar las teclas presionadas
'         if key = "right" and m.contenido.isInFocusChain()
'             ' Cambiar el enfoque 
'             m.contenido.setFocus(false)
'             m.detalle.setFocus(true)
'             handled = true
'         else if key = "left" and m.detalle.isInFocusChain()
'             ' Cambiar el enfoque 
'             m.detalle.setFocus(false)
'             m.contenido.setFocus(true)
'             handled = true
'         else if key = "OK" and m.detalle.hasFocus()
'             ' Mostrar la pantalla del video
'             m.firstScreen.visible=false
'             m.videoScene.visible = true
'             handled = true
'         end if
'     end if
    
'     return handled
' end function


sub showSecondScreen(event as object)
    data= event.getData()
    if data= invalid
        m.firstScreen.visible=false
        m.videoScene.visible = true
    end if
end sub