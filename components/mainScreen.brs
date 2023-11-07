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
' CARITO
    sub onButtonPress()
        screen = CreateObject("roSGScreen")
        scene = screen.GetActiveScene()
    
        if scene <> invalid
            thirdScreen = screen.CreateScene("thirdScreen")
            if thirdScreen <> invalid
                scene.transition = "none" ' Puedes configurar el tipo de transición
                scene.presentation = "modal" ' Puedes configurar la modalidad de la presentación
                scene.replaceChild(thirdScreen)
            end if
        end if
    end sub

    ' matias
    sub onButtonPress2()
        screen = CreateObject("roSGScreen")
        scene = screen.GetActiveScene()
    
        if scene <> invalid
            videoScene = screen.CreateScene("videoScene")
            if videoScene <> invalid
                scene.transition = "none" ' Puedes configurar el tipo de transición
                scene.presentation = "modal" ' Puedes configurar la modalidad de la presentación
                scene.replaceChild(videoScene)
            end if
        end if
    end sub