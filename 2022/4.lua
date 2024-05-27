-- Common letters find most common letter in string (lowercase and uppercase is different letters) / THIS SOLUTION ISN'T FINISHED


function solution(str)
    local t = {}
    local idx = 0
    local copy = str
    
    for i = 1, #str do
        table.insert(t, i, {string.char(string.byte(str, i)), 0})
    end

    for i = 1, #str do
        if string.char(string.byte(str, i)) == t[i][1] then
            t[i][2] = t[i][2] + 1
        end
    end


    return str
end


local str = "Hello world"
local checked = solution(str)
print(checked)
