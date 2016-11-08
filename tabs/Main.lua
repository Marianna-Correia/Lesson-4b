-- Lesson 4a

-- Created by: Marianna Correia
-- Created on: Nov. 4, 2016
-- This program displays a charactor moving at the touch of your finger

local imagePosition = vec2()
local imageName = "SpaceCute:Beetle Ship"
local imageSize = vec2()

-- Use this function to perform your initial setup
function setup()
    --set up display options
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    pushStyle()
   
    --get image info
    imagePosition = vec2(WIDTH/2, HEIGHT/2)
    imageSize = vec2 (spriteSize(imageName))
end

-- This function gets called once every frame
function touched(touch)
    --local variables
    local currentTouchPosition = vec2(touch.x, touch.y)
    
    if (touch.state == BEGAN) then
    
    end

    if (touch.state == MOVING) then
        -- confirm you are touching inside the sprite, before moving it
        --print(currentTouchPosition)
        if( (imagePosition.x - imageSize.x/2) < currentTouchPosition.x and
            (imagePosition.x - imageSize.x/2) < currentTouchPosition.x and
            (imagePosition.y - imageSize.y/2) < currentTouchPosition.x and
            (imagePosition.y - imageSize.y/2) < currentTouchPosition.x) then
            
            imagePosition = currentTouchPosition
          end
      end
        
    if(touch.state == ENDED) then
        
    end
end

--this function gets called once every frame
function draw()
    --local variable
    
    --Do your drawing here
    background(0, 0, 0, 255)
    sprite("SpaceCute:Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    sprite(imageName, imagePosition.x, imagePosition.y)
end
    
    