local pool = {}
local tremove = table.remove
local tinsert = table.insert

local function get()
    if #pool > 0 then
        return tremove(pool)
    end
    return {}
end

local function put(tbl, no_need_clear)
    if not no_need_clear then
        for k in pairs(tbl) do
            tbl[k] = nil
        end
    end
    tinsert(pool, tbl)
end

local function test()
    local tbl = get()
    assert(type(tbl) == "table")
    tbl.a = 1
    tbl.b = 2
    put(tbl)
    assert(#pool == 1)
end

test()
