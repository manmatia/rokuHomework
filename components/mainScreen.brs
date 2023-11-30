sub init()
    m.sideBar = m.top.findNode("sideBar")
    m.firstScreen = m.top.findNode("firstScreen")
    m.descriptText = m.top.findNode("descriptText")
    m.videoScene = m.top.findNode("videoScene")
    m.detalleScreen = m.top.findNode("detalleScreen")
    m.list = m.top.findNode("list")
    m.list2 = m.top.findNode("list2")
    m.profile = m.top.findNode("profile")
    m.home = m.top.findNode("home")
    m.search = m.top.findNode("search")
    m.movie = m.top.findNode("movie")
    m.favorite = m.top.findNode("favorite")
    m.settings = m.top.findNode("settings")
    m.profile.opacity = 0.2
    m.home.opacity = 0.2
    m.search.opacity = 0.2
    m.movie.opacity = 0.2
    m.favorite.opacity = 0.2
    m.settings.opacity = 0.2
    ' poster
    m.advengers = m.top.findNode("advengers")
    m.capitanAmeric = m.top.findNode("capitanAmeric")
    m.hulk = m.top.findNode("hulk")
    m.ironman = m.top.findNode("ironman")

    m.advengers.setFocus(true)
    m.advengers.opacity = 1
    m.capitanAmeric.opacity = 0.6
    m.hulk.opacity = 0.6
    m.ironman.opacity = 0.6

  

end sub


sub focusPoster(posterOld, posterNew)
    posterNew.setFocus(true)
    posterNew.opacity = 1
    posterOld.opacity = 0.6
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    handled = false

    if press then
        posterOld = invalid
        posterNew = invalid

        if m.advengers.hasFocus()
            posterOld = m.advengers
            posterNew = m.capitanAmeric
        else if m.capitanAmeric.hasFocus()
            posterOld = m.capitanAmeric
            posterNew = m.hulk
        else if m.hulk.hasFocus()
            posterOld = m.hulk
            posterNew = m.ironman
        else if m.ironman.hasFocus()
            posterOld = m.ironman
            posterNew = m.advengers
        end if

        if posterOld <> invalid and posterNew <> invalid
            if key = "right"
                focusPoster(posterOld, posterNew)
                handled = true
            else if key = "left"
                focusPoster(posterNew, posterOld)
                handled = true
            else if key = "OK"
                handleOkAction(posterOld)
                handled = true    
            end if
        end if
    end if

    return handled
end function

sub handleOkAction(posterOld)
    if posterOld = m.advengers
      
        m.sideBar.visible = true
        m.firstScreen.visible = false
        m.list.visible = false
        m.descriptText.visible = false
        m.videoScene.visible = true
        m.home.setFocus(true)
        setVideo()
    else if posterOld = m.capitanAmeric
       
    end if
end sub


' function onKeyEvent(key as string, press as boolean) as boolean
'     handled = false

'     if press then

'         if key = "right"
'             m.currentIndex=m.currentIndex+1
'             m.childTwo=m.idList[m.currentIndex]
'             focusPoster(m.childOne,m.childTwo)
'             m.childOne=
'             handled = true
'         else if key = "left"
'             focusPoster(m.childTwo,m.childOne)
'            handled = true


'         else if key= "OK" and m.advengers.hasFocus()
'             m.sideBar.visible = true
'             m.firstScreen.visible = false
'             m.list.visible=false
'             m.list2.visible=false
'             m.descriptText.visible = false
'             m.videoScene.visible = true
'             m.home.setFocus(true)
'             m.sideBar.visible = true
'             m.firstScreen.visible = false
'             m.descriptText.visible = false
'             m.videoScene.visible = true
'             m.home.setFocus(true)
'             setVideo()
'         else if key= "OK" and m.advengers2.hasFocus()
'             m.sideBar.visible = true
'             m.list.visible=false
'             m.list2.visible=false
'             m.firstScreen.visible = false
'             m.descriptText.visible = false
'             m.videoScene.visible = true
'             m.home.setFocus(true)
'             m.sideBar.visible = true
'             m.firstScreen.visible = false
'             m.descriptText.visible = false
'             m.videoScene.visible = true
'             m.home.setFocus(true)
'             setVideo()
'         else if key= "OK" and m.hulk2.hasFocus()
'             m.sideBar.visible = true
'             m.list.visible=false
'             m.list2.visible=false
'             m.firstScreen.visible = false
'             m.descriptText.visible = false
'             m.videoScene.visible = true
'             m.home.setFocus(true)
'             m.sideBar.visible = true
'             m.firstScreen.visible = false
'             m.descriptText.visible = false
'             m.videoScene.visible = true
'             m.home.setFocus(true)
'             setVideo()
'         else if key= "OK" and m.hulk.hasFocus()
'             m.sideBar.visible = true
'             m.list.visible=false
'             m.list2.visible=false
'             m.firstScreen.visible = false
'             m.descriptText.visible = false
'             m.videoScene.visible = true
'             m.home.setFocus(true)

'                 m.sideBar.visible = true
'                 m.firstScreen.visible = false
'                 m.descriptText.visible = false
'                 m.videoScene.visible = true
'                 m.home.setFocus(true)
'                 setVideo()

'         else if key= "OK" and m.home.hasFocus()

'             m.sideBar.visible = true
'             m.list.visible=false
'             m.list2.visible=false
'             m.firstScreen.visible = true
'             m.descriptText.visible = true
'             m.videoScene.visible = false

'         else if key= "OK" and m.capitanAmeric.hasFocus()
'             m.sideBar.visible = true
'             m.list.visible=false
'             m.list2.visible=false
'             m.firstScreen.visible = false
'             m.descriptText.visible = false
'             m.detalleScreen.visible = true
'             m.home.setFocus(true)
'         else if key= "OK" and m.capitanAmeric2.hasFocus()
'             m.sideBar.visible = true
'             m.list.visible=false
'             m.list2.visible=false
'             m.firstScreen.visible = false
'             m.descriptText.visible = false
'             m.detalleScreen.visible = true
'             m.home.setFocus(true)
'         else if key= "OK" and m.ironman.hasFocus()
'             m.sideBar.visible = true
'             m.firstScreen.visible = false
'             m.list.visible=false
'             m.list2.visible=false
'             m.descriptText.visible = false
'             m.detalleScreen.visible = true
'             m.home.setFocus(true)
'         else if key= "OK" and m.ironman2.hasFocus()
'             m.sideBar.visible = true
'             m.list.visible=false
'             m.list2.visible=false
'             m.firstScreen.visible = false
'             m.descriptText.visible = false
'             m.detalleScreen.visible = true
'             m.home.setFocus(true)
'         else if key= "up" and m.profile.isInFocusChain()
'             m.settings.setFocus(true)
'             m.settings.opacity=1
'             m.profile.setFocus(false)
'             m.profile.opacity=0.6
'         else if key= "down" and m.profile.isInFocusChain()
'             m.home.setFocus(true)
'             m.home.opacity=1
'             m.profile.setFocus(false)
'             m.profile.opacity=0.6

'         else if key= "up" and m.home.isInFocusChain()
'             m.profile.setFocus(true)
'             m.profile.opacity=1
'             m.home.setFocus(false)
'             m.home.opacity=0.6

'         else if key= "down" and m.home.isInFocusChain()
'             m.search.setFocus(true)
'             m.search.opacity=1
'             m.home.setFocus(false)
'             m.home.opacity=0.6
'         else if key= "up" and m.search.isInFocusChain()
'             m.home.setFocus(true)
'             m.home.opacity=1
'             m.search.setFocus(false)
'             m.search.opacity=0.6
'         else if key= "down" and m.search.isInFocusChain()
'             m.movie.setFocus(true)
'             m.movie.opacity=1
'             m.search.setFocus(false)
'             m.search.opacity=0.6
'         else if key= "up" and m.movie.isInFocusChain()
'             m.search.setFocus(true)
'             m.search.opacity=1
'             m.movie.setFocus(false)
'             m.movie.opacity=0.6
'         else if key= "down" and m.movie.isInFocusChain()
'             m.favorite.setFocus(true)
'             m.favorite.opacity=1
'             m.movie.setFocus(false)
'             m.movie.opacity=0.6
'         else if key= "up" and m.favorite.isInFocusChain()
'             m.movie.setFocus(true)
'             m.movie.opacity=1
'             m.favorite.setFocus(false)
'             m.favorite.opacity=0.6
'         else if key= "down" and m.favorite.isInFocusChain()
'             m.settings.setFocus(true)
'             m.settings.opacity=1
'             m.favorite.setFocus(false)
'             m.favorite.opacity=0.6
'         else if key= "up" and m.settings.isInFocusChain()
'             m.favorite.setFocus(true)
'             m.favorite.opacity=1
'             m.settings.setFocus(false)
'             m.settings.opacity=0.6
'         else if key= "down" and m.settings.isInFocusChain()
'             m.profile.setFocus(true)
'             m.profile.opacity=1
'             m.settings.setFocus(false)
'             m.settings.opacity=0.6
'         else if key= "back" and m.profile.isInFocusChain()
'             m.profile.opacity=0.6
'             m.home.opacity=0.6
'             m.search.opacity=0.6
'             m.movie.opacity=0.6
'             m.favorite.opacity=0.6
'             m.settings.opacity=0.6
'             m.advengers.setFocus(true)
'         else if key= "back" and m.home.isInFocusChain()
'             m.profile.opacity=0.6
'             m.home.opacity=0.6
'             m.search.opacity=0.6
'             m.movie.opacity=0.6
'             m.favorite.opacity=0.6
'             m.settings.opacity=0.6
'             m.advengers.setFocus(true)
'         else if key= "back" and m.search.isInFocusChain()
'             m.profile.opacity=0.6
'             m.home.opacity=0.6
'             m.search.opacity=0.6
'             m.movie.opacity=0.6
'             m.favorite.opacity=0.6
'             m.settings.opacity=0.6
'             m.advengers.setFocus(true)
'         else if key= "back" and m.movie.isInFocusChain()
'             m.profile.opacity=0.6
'             m.home.opacity=0.6
'             m.search.opacity=0.6
'             m.movie.opacity=0.6
'             m.favorite.opacity=0.6
'             m.settings.opacity=0.6
'             m.advengers.setFocus(true)
'         else if key= "back" and m.favorite.isInFocusChain()
'             m.profile.opacity=0.6
'             m.home.opacity=0.6
'             m.search.opacity=0.6
'             m.movie.opacity=0.6
'             m.favorite.opacity=0.6
'             m.settings.opacity=0.6
'             m.advengers.setFocus(true)
'         else if key= "back" and m.settings.isInFocusChain()
'             m.profile.opacity=0.6
'             m.home.opacity=0.6
'             m.search.opacity=0.6
'             m.movie.opacity=0.6
'             m.favorite.opacity=0.6
'             m.settings.opacity=0.6
'             m.advengers.setFocus(true)
'         ' else if key= "back" and m.advengers.isInFocusChain()
'         '     m.profile.opacity=0.6
'         '     m.home.opacity=0.6
'         '     m.search.opacity=0.6
'         '     m.movie.opacity=0.6
'         '     m.favorite.opacity=0.6
'         '     m.settings.opacity=0.6
'         '     m.advengers.setFocus(true)
'         end if
'     end if
' end if
'     return handled
' end function


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