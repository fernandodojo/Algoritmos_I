io.stdout:setvbuf("no")
io.stdout:setvbuf "no"
love.graphics.setDefaultFilter("nearest", "nearest")

print(love.graphics.getHeight())
print(love.graphics.getWidth())




function love.load()
	love.physics.setMeter(100)
 	mundo = love.physics.newWorld(0, 9.8*love.physics.getMeter(), true)

 	chao = {}
 	chao.b = love.physics.newBody(mundo, 400, 580, "static")
 	chao.s = love.physics.newRectangleShape(800, 40)
 	chao.f = love.physics.newFixture(chao.b, chao.s)

	char1 = {}
	char1.b = love.physics.newBody(mundo, 400, 400, "dynamic")
	char1.s = love.physics.newRectangleShape(40, 70)
	char1.f = love.physics.newFixture(char1.b, char1.s)
	char1.f:setRestitution(0.7)

	--[[gun1 = {}
	gun1.b = love.physics.newBody(mundo, 420,400, "dynamic")
	gun1.s = love.physics.newRectangleShape(10, 2)
	gun1.f = love.physics.newFixture(gun1.b, gun1.s)

	joint = love.physics.newWeldJoint( char1.b, gun1.b, 400, 400, false )

	]]
end

function love.update(dt)
	mundo:update(dt)

end

function love.draw()

    love.graphics.setColor(255, 255, 255) --setting the color to white for the ground. Because why not?
    love.graphics.polygon("fill", chao.b:getWorldPoints(chao.s:getPoints()))

    love.graphics.setColor(186, 186, 186)
    love.graphics.polygon("fill", char1.b:getWorldPoints(char1.s:getPoints()))

    --love.graphics.setColor(186, 196, 196)
    --love.graphics.polygon("fill", gun1.b:getWorldPoints(gun1.s:getPoints()))
end


--[[
p = love.physics
g = love.graphics
k = love.keyboard

function love.load()
  p.setMeter(100)
  w = p.newWorld(0, 9.8*p.getMeter(), true) 

  ground = {}

  ground.b = p.newBody(w, 407, 421, "static")
  ground.s = p.newRectangleShape(429, 40)
  ground.f = p.newFixture(ground.b, ground.s)

  blocks = {
    {},
    {}
  }
  
  blocks[1].b = p.newBody(w, 264, 254, "dynamic") 

  blocks[1].s = p.newRectangleShape(35, 75)

  blocks[1].f = p.newFixture(blocks[1].b, blocks[1].s) 


  blocks[2].b = p.newBody(w, 264, 254, "dynamic") 

  blocks[2].s = p.newRectangleShape(35, 75)

  blocks[2].f = p.newFixture(blocks[2].b, blocks[2].s) 

  player = {}

  player.b = p.newBody(w, 476, 270, "dynamic") 

  player.s = p.newCircleShape(30)

  player.f = p.newFixture(player.b, player.s)

  player.f:setRestitution(0.7)
end

function love.update(dt)
  w:update(dt)

  if k.isDown("up") or k.isDown("w") then
    player.b:applyForce(0, -300) 
  end

  if k.isDown("down") or k.isDown("s") then
    player.b:applyForce(0, 300)
  end

  if k.isDown("left") or k.isDown("a") then
    player.b:applyForce(-300, 0)
  end

  if k.isDown("right") or k.isDown("d") then
    player.b:applyForce(300, 0)
  end
end

function love.draw()
  g.setColor(255, 0, 0)
  g.circle("fill", player.b:getX(), player.b:getY(), player.s:getRadius()) 

  g.setColor(255, 255, 255) --setting the color to white for the ground. Because why not?
  g.polygon("fill", ground.b:getWorldPoints(ground.s:getPoints()))

  g.setColor(0, 255, 0) --setting the color for our blocks to green.
  g.polygon("fill", blocks[1].b:getWorldPoints(blocks[1].s:getPoints()))
  g.polygon("fill", blocks[2].b:getWorldPoints(blocks[2].s:getPoints()))

  g.setColor(255, 255, 255)
end

]]