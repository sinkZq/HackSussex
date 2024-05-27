-- Higher or lower if next idx is lower or higher return total (no sorting functions / libs allowed)


function solution(t)
    local low = math.huge
    
    for i = 1, #t do
        if t[i] < low then
            low = t[i]
            table.remove(t, i)
            table.insert(t, 1, low)
        end
    end

    return t
end

local t = {3, 2, 1, 15, 142}
local checked = solution(t)
print(unpack(checked))
