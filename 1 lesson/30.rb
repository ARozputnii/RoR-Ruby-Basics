#30 Дан целочисленный массив. 
#Упорядочить его по убыванию.


print arr = [1, -1, 2, 3, 4, 5, -5,  32, 44, 55, -100, 100]
puts
print arr.sort {|x, y| y <=> x }
