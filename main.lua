package.cpath = package.cpath..";./sproto/?.so"
package.path = package.path..";./sproto/?.lua"

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

local function pool_test()
    local tbl = get()
    assert(type(tbl) == "table")
    tbl.a = 1
    tbl.b = 2
    put(tbl)
    assert(#pool == 1)
end
--pool_test()

_G.POOL_GET = get

local function testsuite(name)
    print("========== test_suite:", name)
    require(name)
end

testsuite("sproto.test")
testsuite("sproto.testall")
testsuite("sproto.test_wire_protocol")
testsuite("sproto.testcompat")
testsuite("sproto.testrpc")
--testsuite("sproto.testweaktype")

