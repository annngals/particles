Square = {}
Square.__index = Square

function Square:create(quantity)
    local square = {}
    setmetatable(square, Square)
    square.location = Vector:create(math.random(0, 800), math.random(0, 600))
    square.quantity = 10
    return square
end

function Square:update()
    
end

function Square:draw()
    love.graphics.rectangle("fill", xr1, yr1, sr1, sr1)
end