
player = {
  x = 0,
  y = 0,
  width = 32,
  height = 64,
  gravity = 200,
  runspeed = 600,
  xvelocity = 0,
  yvelocity = 0,
  terminalvelocity = 500
  }
  

function player.position(x,y)
  player.x, player.y = x,y
end

function player.update(dt)
  player.move(dt)
  player.applyGravity(dt)
  player.y= player.y + player.yvelocity * dt
end

function player.move(dt)
  if love.keyboard.isDown("d") then
    player.x = player.x + player.runspeed * dt
    
  elseif love.keyboard.isDown("a") then
    player.x = player.x - player.runspeed * dt
  end
end
  
 
function player.applyGravity(dt)
  if player.yvelocity < player.terminalvelocity then
    player.yvelocity = player.yvelocity + player.gravity * dt
  else
    player.yvelocity = player.terminalvelocity
  end
  
end 
  
function player.draw()
  love.graphics.setColor(255,255,0)
  love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end

function love.update(dt)
  player.update(dt)
end

function love.load()
  player.position(love.graphics.getWidth()/2,0)
end

function love.draw()
  player.draw()
end