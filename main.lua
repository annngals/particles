require("vector")
require("particle")
require("square")

function love.load()
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    system = ParticleSystem:create(Vector:create(width / 2, height / 2), 100)
    gravity = Vector:create(0, 0.1)
    square = Square:create()
    -- particle = Particle:create(Vector:create(width/2, height/2))

end

function love.update(dt)
    -- particle:update()
    system:applyForce(gravity)
    system:update()
end

function love.mousepressed(x, y, button, istouch, presses)

end

function love.draw()
    -- particle:draw()
    system:draw()
end
