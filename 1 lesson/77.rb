# Дано целое число. Найти сумму его цифр.

arr = []
a = gets.chomp
arr << a
p arr.split('').map(&:to_i)
p arr.inject(:+)