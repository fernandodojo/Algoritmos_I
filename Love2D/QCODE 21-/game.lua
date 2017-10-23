function game_load()
end

function game_update(dt)
	player_update(dt)
end

function game_draw()
	player_draw()
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("fill", 0, 570,800, 30)
end

function game_keypressed(key)
	player_keypressed(key)

end

-- https://www.love2d.org/wiki/BoundingBox.lua-- Collision detection function;
-- Returns true if two boxes overlap, false if they don't;
-- x1,y1 are the top-left coords of the first box, while w1,h1 are its width and height;
-- x2,y2,w2 & h2 are the same, but for the second box.
function aabb(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end