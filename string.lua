
-- string
-- ""
-- ''
-- [[]]

-- eg:
string1 = "Lua"
print("\"字符串1是\"",string1)
string2 = 'runoob.com'
print("字符串2是",string2)
string3 = [["Lua 教程"]]
print("字符串3是",string3)

-- string functions
--[[
    string.upper(args)
    string.lower(args)
    string.gsub(mainString,findString,replaceString,replaceCount)
    string.find(str,substr,[ initIndex,[endIndex] ])
    string.reverse(args)
    string.format(...)
    string.char(arg)/string.byte(args[,int])
    string.len(arg)
    string.rep(string,n)  返回字符串的n个拷贝
    string.gmatch(str,pattern) 返回一个迭代器函数，每一次调用这个函数，返回一个在字符串str找到的下一个符合pattern描述
                               的子串。如果参数pattern描述的字符串没有找到，迭代函数返回nil.
                               eg:   
                               for word in string.gmatch("Hello Lua user","%a+") do
                                    print(word)
                               end

                               result:
                               Hello
                               Lua
                               user
    string.match(str,pattern,init) 只寻找字符串中的第一个配对，init为初始起点，默认1
                            eg:
                            >= string.math("I have 2 questions for you.","%d+ %a+")
                            2 questions

--]]

-- 字符串格式化
str1 =  "Lua"
str2 = "Tutorial"
print(string.format("基本格式化 %s %s",str1,str2))

-- 日期格式化
year = 2018
month = 11
date = 14
print(string.format("日期格式化 %03d/%02d/%02d",year,month,date))

-- 十进制格式化
print(string.format("%.4f",1/3))

number1 = 10
number2 = 20