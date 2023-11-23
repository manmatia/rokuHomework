sub init()
    m.sideBar = m.top.findNode("sideBar")
    m.firstScreen = m.top.findNode("firstScreen")
    m.descriptText = m.top.findNode("descriptText")
    m.contenido = m.top.findNode("contenido")
    m.detalle = m.top.findNode("detalle")
    m.videoScene = m.top.findNode("videoScene")
    m.contenido.setFocus(true)
    m.detalleScreen = m.top.findNode("detalleScreen")
  
    m.home2 = m.top.findNode("home2")
    m.contenido.observefield("buttonselected", "showSecondScreen")
    m.detalle.observefield("buttonselected", "showDetalleScreen")
    ' m.home.observefield("buttonselected", "showGoHome")
    m.home2.observefield("buttonselected", "showGoHome2")

    ' botones navbar
    m.profile=m.top.findNode("profile")
    m.home=m.top.findNode("home")
    m.search=m.top.findNode("search")
    m.movie=m.top.findNode("movie")
    m.favorite=m.top.findNode("favorite")
    m.settings=m.top.findNode("settings")

    m.profile.opacity=0.2
    m.home.opacity=0.2
    m.search.opacity=0.2
    m.movie.opacity=0.2
    m.favorite.opacity=0.2
    m.settings.opacity=0.2

end sub



function onKeyEvent(key as string, press as boolean) as boolean
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
        else if key= "back" and m.contenido.isInFocusChain()
            m.profile.opacity=1
            m.home.opacity=0.6
            m.search.opacity=0.6
            m.movie.opacity=0.6
            m.favorite.opacity=0.6
            m.settings.opacity=0.6
            
            m.profile.setFocus(true)

        else if key= "OK" and m.home.hasFocus()
            m.sideBar.visible = true
            m.firstScreen.visible = true
            m.descriptText.visible = true
            m.videoScene.visible = false
        
        else if key= "up" and m.profile.isInFocusChain()
            m.settings.setFocus(true)
            m.settings.opacity=1
            m.profile.setFocus(false)
            m.profile.opacity=0.6
        else if key= "down" and m.profile.isInFocusChain()
            m.home.setFocus(true)
            m.home.opacity=1
            m.profile.setFocus(false)
            m.profile.opacity=0.6
        
        else if key= "up" and m.home.isInFocusChain()
            m.profile.setFocus(true)
            m.profile.opacity=1
            m.home.setFocus(false)
            m.home.opacity=0.6    
        
        else if key= "down" and m.home.isInFocusChain()
            m.search.setFocus(true)
            m.search.opacity=1
            m.home.setFocus(false)
            m.home.opacity=0.6
        else if key= "up" and m.search.isInFocusChain()
            m.home.setFocus(true)
            m.home.opacity=1
            m.search.setFocus(false)
            m.search.opacity=0.6
        else if key= "down" and m.search.isInFocusChain()
            m.movie.setFocus(true)
            m.movie.opacity=1
            m.search.setFocus(false)
            m.search.opacity=0.6
        else if key= "up" and m.movie.isInFocusChain()
            m.search.setFocus(true)
            m.search.opacity=1
            m.movie.setFocus(false)
            m.movie.opacity=0.6
        else if key= "down" and m.movie.isInFocusChain()
            m.favorite.setFocus(true)
            m.favorite.opacity=1
            m.movie.setFocus(false)
            m.movie.opacity=0.6
        else if key= "up" and m.favorite.isInFocusChain()
            m.movie.setFocus(true)
            m.movie.opacity=1
            m.favorite.setFocus(false)
            m.favorite.opacity=0.6
        else if key= "down" and m.favorite.isInFocusChain()
            m.settings.setFocus(true)
            m.settings.opacity=1
            m.favorite.setFocus(false)
            m.favorite.opacity=0.6
        else if key= "up" and m.settings.isInFocusChain()
            m.favorite.setFocus(true)
            m.favorite.opacity=1
            m.settings.setFocus(false)
            m.settings.opacity=0.6
        else if key= "down" and m.settings.isInFocusChain()
            m.profile.setFocus(true)
            m.profile.opacity=1
            m.settings.setFocus(false)
            m.settings.opacity=0.6
        else if key= "back" and m.profile.isInFocusChain()
            m.profile.opacity=0.6
            m.home.opacity=0.6
            m.search.opacity=0.6
            m.movie.opacity=0.6
            m.favorite.opacity=0.6
            m.settings.opacity=0.6
            m.contenido.setFocus(true)
        else if key= "back" and m.home.isInFocusChain()
            m.profile.opacity=0.6
            m.home.opacity=0.6
            m.search.opacity=0.6
            m.movie.opacity=0.6
            m.favorite.opacity=0.6
            m.settings.opacity=0.6
            m.contenido.setFocus(true)   
        else if key= "back" and m.search.isInFocusChain()
            m.profile.opacity=0.6
            m.home.opacity=0.6
            m.search.opacity=0.6
            m.movie.opacity=0.6
            m.favorite.opacity=0.6
            m.settings.opacity=0.6
            m.contenido.setFocus(true)
        else if key= "back" and m.movie.isInFocusChain()
            m.profile.opacity=0.6
            m.home.opacity=0.6
            m.search.opacity=0.6
            m.movie.opacity=0.6
            m.favorite.opacity=0.6
            m.settings.opacity=0.6
            m.contenido.setFocus(true)   
        else if key= "back" and m.favorite.isInFocusChain()
            m.profile.opacity=0.6
            m.home.opacity=0.6
            m.search.opacity=0.6
            m.movie.opacity=0.6
            m.favorite.opacity=0.6
            m.settings.opacity=0.6
            m.contenido.setFocus(true) 
        else if key= "back" and m.settings.isInFocusChain()
            m.profile.opacity=0.6
            m.home.opacity=0.6
            m.search.opacity=0.6
            m.movie.opacity=0.6
            m.favorite.opacity=0.6
            m.settings.opacity=0.6
            m.contenido.setFocus(true)
        else if key= "back" and m.contenido.isInFocusChain()
            m.profile.opacity=0.6
            m.home.opacity=0.6
            m.search.opacity=0.6
            m.movie.opacity=0.6
            m.favorite.opacity=0.6
            m.settings.opacity=0.6
            m.contenido.setFocus(true)    
        end if
    end if

    return handled
end function


sub showSecondScreen(event as object)
    data = event.getData()
    if data = invalid
        m.sideBar.visible = true
        m.firstScreen.visible = false
        m.descriptText.visible = false
        m.videoScene.visible = true
        m.home.setFocus(true)
        setVideo()
    end if
end sub

function setVideo()
    videoContent = createObject("RoSGNode", "ContentNode")
    ' videoContent.URL = "https://www.google.com.ar/search?q=intro+de+marvel+video&sca_esv=577833058&tbm=vid&sxsrf=AM9HkKkH7rIvtEXPnjjGqYSF4zcnNMgFrA:1698679432050&source=lnms&sa=X&ved=2ahUKEwi8tImBip6CAxXzq5UCHanNAdoQ_AUoAXoECAIQAw&biw=1440&bih=779&dpr=2#fpstate=ive&vld=cid:b1d02f9b,vid:2SkMUjilx_M,st:0"
    videoContent.URL = "pkg:/images/MARVEL.mp4"
    videoContent.title = "Marvel"
    videoContent.streamformat = "mp4"

    m.video = m.top.findNode("videoPlayer")
    m.video.content = videoContent
    m.video.control = "play"
    m.video.focusable = true
    print m.video.content

end function

sub showGoHome(event as object)
    data = event.getData()
    if data = invalid
        m.sideBar.visible = true
        m.firstScreen.visible = true
        m.descriptText.visible = true
        m.videoScene.visible = false
        m.contenido.setFocus(true)

    end if
end sub

sub showGoHome2(event as object)
    data = event.getData()
    if data = invalid
        m.sideBar.visible = true
        m.firstScreen.visible = true
        m.descriptText.visible = true
        m.detalleScreen.visible = false
        m.contenido.setFocus(true)

    end if
end sub

sub showDetalleScreen(event as object)
    data = event.getData()
    if data = invalid
        m.sideBar.visible = true
        m.firstScreen.visible = false
        m.descriptText.visible = false
        m.detalleScreen.visible = true
        m.home2.setFocus(true)

    end if
end sub