-- Combining lists in an altering fashion


function solution(t1, t2)
    local t = {}
    local largest = 0
    local idx = 0

    for i = 1, #t1 + #t2 do
        if i % 2 ~= 0 then
            idx = idx + 1
            table.insert(t, i, t1[idx])
        else
            table.insert(t, i, t2[idx])
        end
    end

    return t
end

local t1, t2 = {4, 6, 1, 1}, {2, 2, 2, 2}

local checked = solution(t1, t2)

for i,v in pairs(checked) do
    print(v)
end
