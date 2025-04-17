function love.load()
    x = 100
    y = 100

    size_x = 30
    size_y = 30

    window_size_x, window_size_y = love.graphics.getDimensions()

    x_obj, y_obj = create_obj(window_size_x, window_size_y)
end

function love.update(dt) -- "delta time" o intervalo de tempo de um frame para outro
    if love.keyboard.isDown("up") then
        y = y - 5
    end

    if love.keyboard.isDown("down") then
        y = y + 5
    end

    if love.keyboard.isDown("left") then
        x = x - 5
    end

    if love.keyboard.isDown("right") then
        x = x + 5
    end

    if checkCollision(x, y, size_x, size_y, x_obj, y_obj, 15, 15) then
        size_x = size_x + 5
        size_y = size_y + 5

        x_obj, y_obj = create_obj(window_size_x, window_size_y)
    end

end

function love.draw()
    love.graphics.rectangle("fill", x, y, size_x, size_y)
    love.graphics.rectangle("fill", x_obj, y_obj, 15, 15)
    
end

function create_obj(window_x, window_y)
    obj_x = math.random(0, window_x - 15)
    obj_y = math.random(0, window_y - 15)

    return obj_x, obj_y
end

function checkCollision(x1,y1,w1,h1, x2,y2,w2,h2)
    return x1 < x2 + w2 and
           x2 < x1 + w1 and
           y1 < y2 + h2 and
           y2 < y1 + h1
end
