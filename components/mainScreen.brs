sub init()
m.detalle=m.top.findNode("detalle")
m.contenido=m.top.findNode("contenido")
m.contenido.setFocus(true)   

end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    
    if press then
        ' Verificar las teclas presionadas
        if key = "right"
            ' Cambiar el enfoque 
            if m.contenido.isInFocusChain()
                m.contenido.setFocus(false)
                m.detalle.setFocus(true)
          
                handled = true
      
            end if
        else if key = "left"
            ' Cambiar el enfoque 
            if m.detalle.isInFocusChain()
                m.detalle.setFocus(false)
                m.contenido.setFocus(true)
          
                handled = true
     
            end if

        else if key = "ok"
      
        end if
    end if
    
    return handled
end function

