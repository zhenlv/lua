#!/usr/local/bin/lua

--print("Hello World!")

--[[
    print("Hello World!")
    print("Hello World2")
--]]


print("Hello World, Lua !")

print("=================== Data Type ========================")
print(type("hello world"))
print(type(10.9*12))
print(type(print))
print(type(type))
print(type(true))
print(type(nil))
print(type(type(nil)))
print(type(X)==nil)
print(type(X)=="nil")

-- nil
print("======== nil =============")
tab1 = { key1 = 'val1', key2 = 'val2','val3'}
for k,v in pairs(tab1) do
    print(k .. "-" .. v)
end

print('=== after set tab1.key1 = nil === ')

tab1.key1 = nil
for k,v in pairs(tab1) do 
    print(k .. "-" .. v)
end

print(type(X)==nil)
print(type(X)=="nil")

-- boolean
print("======== boolean =============")
if false or nil then
    print("anyone is true")
else
    print("both false and nil are false , others are all true")
end

-- number
print("======== number ==============")
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))

-- string
print("======== string ===============")
string1 = "this is string1"
string2 = 'this is string2'
html = [[
    <html>
    <head></head>
    <body>
        <a href="http://www.runoob.com">菜鸟教程</a>
    </body>
    </html>
]]
print("string1 =",string1)
print("string2 = ",string2)
print("html = ",html)

print("\"2\" + 6 = ","2" + 6)
print("\"2 + 6\" = ","2 + 6")

string3 = "www.runoob.com"
print("lenth of string3 is",#string3)


-- table
print("======== table ===============")
local tbl1 = {}
local tbl2 = {"apple","pear","orange","grape"}
for k,v in pairs(tbl2) do 
    print(k,v)
end

a = {}
a["key"] = "value";
key = 10
a[key] = 20
a[key] = a[key] + 10
for k,v in pairs(a) do
    print(k .. " : " .. v)
end

a3 = {}
for i = 1,10 do
    a3[i] = i
end
a3["key"] = "value"
a3[100] = 200
print(#a3) -- FIXME
for k,v in pairs(a3) do 
    print(k,v)
end

-- function
print("======== function ===============")
function factorial(n)
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

print(factorial(5))
factorial2 = factorial
print(factorial2(6))


function testFunc(tab,fun)
    for k,v in pairs(tab) do 
        print(fun(k,v))
    end
end

tab1 = {key1 = "val1",key2 = "val2"}
testFunc(tab1,
    function(key,val) -- anonymouse function
        return key.." = "..val
    end
)
