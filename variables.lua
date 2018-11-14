--[[
变量在使用前，必须在代码中进行声明，即创建该变量。
编译程序执行代码之前编译器需要知道如何给语句变量开辟存储区，用于存储变量的值。

Lua 变量有三种类型：全局变量、局部变量、表中的域。
Lua 中的变量全是全局变量，那怕是语句块或是函数里，除非用 local 显式声明为局部变量。

局部变量的作用域为从声明位置开始到所在语句块结束。
变量的默认值均为 nil。
--]]

-- lua variables
print("========= lua variables ==========")
a = 5               -- 全局变量
local b = 6         -- 局部变量

function joke()
    c = 5           -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(c,d)          --> 5 nil

do 
    local a = 6     -- 局部变量
    b = 6           -- 对局部变量重新赋值
    print(a,b)      --> 6 6
end

print(a,b)          --> 5 6

-- 赋值语句
print("========= 赋值语句 ==========")
a = "hello" .. "world"
t = {n = 2}
t.n = t.n + 1

x,y = 1,2
a,b = 10,2 * x
x,y = y,x
a,b,c = 0,1
print(a,b,c)

a,b = a + 1,b+1,b+2
print(a,b)


-- 索引
print("========= 索引 ==============")
site = {}
site["key"] = "www.runoob.com"
print(site["key"])
print(site.key)
