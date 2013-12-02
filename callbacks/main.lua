
function love.load()
   image = love.graphics.newImage("explosion.png")
   local f = love.graphics.newFont(12)
   love.graphics.setFont(f)
   -- love.graphics.setColor(0,0,0,255)
   -- love.graphics.setBackgroundColor(255,255,255)
end

function love.update(dt)
   if love.keyboard.isDown("up") then
      num = num + 100 * dt -- this would increment num by 100 per second
   end
end

function love.draw()
   love.graphics.draw(image, imgx, imgy)
   love.graphics.print("Click and drag the cake around or use the arrow keys", 10, 10)
end

function love.mousepressed(x, y, button)
   if button == 'l' then
      imgx = x -- move image to where mouse clicked
      imgy = y
   end
end

function love.focus(f)
  if not f then
    print("LOST FOCUS")
  else
    print("GAINED FOCUS")
  end
end

function love.quit()
  print("Thanks for playing! Come back soon!")
end