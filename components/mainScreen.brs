sub init()
m.firstScreen=m.top.findNode("firstScreen")
m.descriptText=m.top.findNode("descriptText")
m.contenido=m.top.findNode("contenido")
m.detalle=m.top.findNode("detalle")
m.videoScene=m.top.findNode("videoScene")
m.contenido.setFocus(true)
m.detalleScreen=m.top.findNode("detalleScreen")
m.home=m.top.findNode("home")
m.home2=m.top.findNode("home2")
m.contenido.observefield("buttonselected" , "showSecondScreen")
m.detalle.observefield("buttonselected" , "showDetalleScreen")
m.home.observefield("buttonselected" , "showGoHome")
m.home2.observefield("buttonselected" , "showGoHome2")
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
   
        end if
    end if
    
    return handled
end function


sub showSecondScreen(event as object)
    data= event.getData()
    if data= invalid
        m.firstScreen.visible= false
        m.descriptText.visible=false
        m.videoScene.visible = true
        m.home.setFocus(true)
        setVideo()
    end if
end sub

function setVideo() 
    videoContent = createObject("RoSGNode", "ContentNode")
    ' videoContent.URL = "https://www.google.com.ar/search?q=intro+de+marvel+video&sca_esv=577833058&tbm=vid&sxsrf=AM9HkKkH7rIvtEXPnjjGqYSF4zcnNMgFrA:1698679432050&source=lnms&sa=X&ved=2ahUKEwi8tImBip6CAxXzq5UCHanNAdoQ_AUoAXoECAIQAw&biw=1440&bih=779&dpr=2#fpstate=ive&vld=cid:b1d02f9b,vid:2SkMUjilx_M,st:0"
   videoContent.URL="pkg:/images/MARVEL.mp4"
    videoContent.title = "Marvel"
    videoContent.streamformat = "mp4"
    
        m.video = m.top.findNode("videoPlayer")
        m.video.content = videoContent
        m.video.control = "play"
        m.video.focusable=true
        print m.video.content
  
end function

sub showGoHome(event as object)
    data= event.getData()
    if data= invalid
        m.firstScreen.visible= true
        m.descriptText.visible=true
        m.videoScene.visible = false
        m.contenido.setFocus(true)
    
    end if
end sub

sub showGoHome2(event as object)
    data= event.getData()
    if data= invalid
        m.firstScreen.visible= true
        m.descriptText.visible=true
        m.detalleScreen.visible = false
        m.contenido.setFocus(true)
    
    end if
end sub

sub showDetalleScreen(event as object)
    data= event.getData()
    if data= invalid
        m.firstScreen.visible= false
        m.descriptText.visible=false
        m.detalleScreen.visible = true
        m.home2.setFocus(true)
       
    end if
end sub