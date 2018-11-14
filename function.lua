
-- 函数返回两个值的最大值
function max(num1,num2)
    if num1 > num2 then
        return num1
    else
        return num2
    end
end

print("两个数字比较，最大值为：",max(10,11))

function myprint(param)
    print("这是打印函数 -   ## ",param,"##")
end

function add(num1,num2,funcPrint)
    result = num1 + num2
    funcPrint(result)
end

myprint("print")
add(2,22,myprint)


-- 多返回值
s,e = string.find("www.runoob.com","runoob")
print(s,e)

function maximum(a)
    local mi = 1
    local m = a[mi]
    for i,val in ipairs(a) do
        if val > m then
            mi,m = i,val
        end
    end
    return m,mi
end

print("获取最大值，以及最大值的索引：",maximum({10,20,3,4,23}))


-- 可变参数 在函数参数列表中使用三点... 表示函数有可变的参数
function adds(...)
    local s = 0
    for i,v in ipairs{...} do 
        s = s + v
    end
    return s
end

print("可变参数函数调用: ",adds(2,3,4,5,6,7))

-- 也可以通过 select("#",...) 来获取可变参数的数量
function average(...)
    local result = 0
    local arg = {...}
    for i,v in ipairs(arg) do 
        result = result + v
    end
    print("总共传入 " .. select("#",...) .. "个数")
    return result/select("#",...)
end

print("求平均数，平均数为：",average(2,5,6,9,2,4,6))

-- select("#",...)   返回可变参数的长度
-- select(n,...)     返回它的第n个可变参数
do 
    function foo(...)
        for i = 1, select("#",...) do  --> 获取参数总数
            local arg = select(i,...)  --> 读取参数
            print("第",i,"个参数，值为：",arg)
        end
    end

    foo(44,55,66,77)

end