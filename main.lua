
push= require "push"

width_window=1280
height_window=720

virtual_width=432
virtual_height=243

function love.load()

--    love.graphics.setDefaultFilter('nearest','nearest')

--    push:setupScreen(virtual_width,virtual_height,{
--
--        fullscreen=false,
--        resizable=false,
--        vsync=true
--
--    })

    love.graphics.setDefaultFilter('nearest', 'nearest')

    smallFont=love.graphics.newFont('font.ttf',8)

        love.graphics.setFont(smallFont)

    push:setupScreen(virtual_width,virtual_height,width_window,height_window,{

        fullscreen=false,
        resizable=false,
        vsync=true

    })
end

function love.keypressed(key)
    if key== "escape" then
        love.event.quit()
    end
end

function love.draw()
    push:apply("start")

    --love.graphics.clear(40, 45, 52, 255)
    --for hello pong on the top
    love.graphics.printf("Hello Pong!",0,20,virtual_width,'center')
    --for the left side paddle
    love.graphics.rectangle('fill',5,30,5,20)
    --for the right side paddle
    love.graphics.rectangle('fill',virtual_width-10,virtual_height-50,5,20)
    --for the ball
    love.graphics.rectangle('fill',virtual_width/2 -2,virtual_height/2-2,4,4)


    push:apply("end")
end