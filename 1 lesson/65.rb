# 65. Дан целочисленный массив. 
#Вывести вначале все его четные элементы, 
#а затем - нечетные.


print arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
puts
print arr.find_all{ |elem| elem.odd? } + arr.find_all{ |elem| elem.even? }
