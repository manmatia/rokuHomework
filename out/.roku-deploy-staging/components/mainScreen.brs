sub init()
m.detalle=m.top.findNode("detalle")
m.contenido=m.top.findNode("contenido")
m.detalle.setFocus(true)   

end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    
    if press then
        ' Verificar las teclas presionadas
        if key = "right"
            ' Cambiar el enfoque y la opacidad al siguiente póster
            if m.detalle.isInFocusChain()
                m.detalle.setFocus(false)
                m.contenido.setFocus(true)
          
                handled = true
      
            end if
        else if key = "left"
            ' Cambiar el enfoque y la opacidad al póster anterior
            if m.contenido.isInFocusChain()
                m.contenido.setFocus(false)
                m.detalle.setFocus(true)
          
                handled = true
     
            end if

        else if key = "ok"
            ' botón "OK"
            if m.detalle.isInFocusChain()
                ' Abrir la escena "
               
                
            else if m.contenido.isInFocusChain()
              
                
                handled = true
   
            end if
        end if
    end if
    
    return handled
end function

