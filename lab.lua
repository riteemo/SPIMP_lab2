function generate_random_string(length)
    local chars = "abcdefghijklmnopqrstuvwxyz"
    local result = ""

    for i = 1, length do
        local index = math.random(#chars)          
        result = result .. chars:sub(index, index)  
    end

    return result
end

math.randomseed(os.time())
local random_str = generate_random_string(30)
print("Random string:", random_str)
