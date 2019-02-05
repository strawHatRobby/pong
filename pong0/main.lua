push = require 'push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

function love.load()
    -- love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT,{
    --     fullscreen = false,
    --     resizable = true,
    --     vsync = true
    -- })
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizeable = false,
        vsync = true
    })
end


function love.draw()
    push:apply('start')
    love.graphics.printf(
    'Pong',
    0,
    VIRTUAL_HEIGHT / 2 - 6,
    VIRTUAL_WIDTH,
    'center'
    )
    push:apply('end')
end

function love.keypressed(key)
    if key == 'esacpe' or key == 'q' then
        love.event.quit()
    end
end



