#3.Дан целочисленный массив. 
#Вывести номер первого из тех его элементов, 
#которые удовлетворяют двойному неравенству: 
#A[0] < A[i] < A[-1]. Если таких элементов нет, 
#то вывести [ ].

print arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
puts 
print arr.index(arr.select { |num| arr[0] < num && num < arr[-1] }.first) || []