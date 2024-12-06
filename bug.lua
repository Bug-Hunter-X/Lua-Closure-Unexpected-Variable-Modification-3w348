local function foo()
  local x = 10
  return function()
    x = x + 1
    return x
  end
 end

local bar = foo()
print(bar()) -- Output: 11
print(bar()) -- Output: 12
print(bar()) -- Output: 13

-- Unexpected behavior
local baz = foo()
print(baz()) -- Output: 11
print(bar()) -- Output: 14  -- Expected output: 11