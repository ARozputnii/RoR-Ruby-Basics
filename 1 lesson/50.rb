# Дан целочисленный массив. 
#Найти количество элементов, расположенных перед первым минимальным.
print arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
max_arr = arr.index(arr.max)
puts
print arr[0...max_arr].size
puts
