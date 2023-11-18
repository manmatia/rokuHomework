sub init()
    m.detalle = m.top.findNode("detalle")
    m.contenido = m.top.findNode("contenido")
    m.contenido.setFocus(true)
   
    m.videoScene = m.top.findNode("videoScene")
    m.enterScreen = m.top.findNode("enterScreen")

    m.videoScene.visible = false
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    
    if press then
        ' Verificar las teclas presionadas
        if key = "right" and m.contenido.isInFocusChain()
            ' Cambiar el enfoque 
            m.contenido.setFocus(false)
            m.detalle.setFocus(true)
            handled = true
        else if key = "left" and m.detalle.isInFocusChain()
            ' Cambiar el enfoque 
            m.detalle.setFocus(false)
            m.contenido.setFocus(true)
            handled = true
        else if key = "ok" and m.detalle.hasFocus()
            ' Mostrar la pantalla del video
            m.videoScene.visible = true
            handled = true
        end if
    end if
    
    return handled
end function
