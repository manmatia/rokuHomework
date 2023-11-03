sub Main()
    print "in start Homework Farith"
    
    screen = CreateObject("roSGScreen")
    m = CreateObject("roAssociativeArray")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    
    scene = screen.CreateScene("mainScreen")
    scene.backgroundColor = ""
    scene.backgroundUri = ""
    
  
    ' Mostrar la pantalla
    screen.show() 
    
    while true
        msg = wait(0, m.port)
        msgType = type(msg)
    
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
  end sub
  