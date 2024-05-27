-- Palindrome string checking (reverse string to check if it's the same as the string un-reversed)


function solution(str)
    local reversedString = string.reverse(str)
    
    if str == reversedString then
        return {true, str, reversedString}
    end

    return {false, str, reversedString}
end

local str = "ABBA"
local checked = solution(str)

for i,v in pairs(checked) do
    print(i,v)
end
