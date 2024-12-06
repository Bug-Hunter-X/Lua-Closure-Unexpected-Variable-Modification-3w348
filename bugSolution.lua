local function foo()
  local x = 10
  return function()
    local y = x  -- Create a local copy of x
    y = y + 1
    return y
  end
 end

local bar = foo()
print(bar()) -- Output: 11
print(bar()) -- Output: 11
print(bar()) -- Output: 11

local baz = foo()
print(baz()) -- Output: 11
print(bar()) -- Output: 11  -- Now the expected output is 11