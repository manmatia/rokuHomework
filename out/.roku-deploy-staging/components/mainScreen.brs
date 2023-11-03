sub init()
    m.detalle=m.top.findNode("detalle")
    m.contenido=m.top.findNode("contenido")
    m.contenido.setFocus(true)   
    m.video= CreateObject("roSGNode", "videoScene")
    m.videoScene = m.top.findNode("videoScene")
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
                if m.detalle.hasFocus()
                    screen = CreateObject("roSGScreen")
                    screen.SetScene("videoScene")
                    handled = true
                end if 
            end if
        end if
        
        return handled
    end function