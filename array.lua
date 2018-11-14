array = {"lua","tutorial"}
for i = 0,2 do
    print(array[i])
end


-- 在 Lua 索引值是以 1 为起始，但你也可以指定 0 开始。除此外我们还可以以负数为数组索引值：
array = {}
for i= -2, 2 do
   array[i] = i *2
end

for i = -2,2 do
   print(array[i])
end