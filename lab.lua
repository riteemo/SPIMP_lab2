function generate_random_string(length)
    local chars = "abcdefghijklmnopqrstuvwxyz"
    local result = ""

    for i = 1, length do
        local index = math.random(#chars)          
        result = result .. chars:sub(index, index)  
    end

    return result
end


function make_palindrome(str)
    local reversed = string.reverse(str)  
    return str .. reversed                
end


function is_palindrome(str)
    return str == string.reverse(str)
end


math.randomseed(os.time())

print("Enter length of random string:")
local length = tonumber(io.read())
    
local random_str = generate_random_string(length)
print("Random string:", random_str)

local palindrome = make_palindrome(random_str)
print("Generated palindrome:", palindrome)

print("Is palindrome?", is_palindrome(palindrome))
print("Is original string palindrome?", is_palindrome(random_str))