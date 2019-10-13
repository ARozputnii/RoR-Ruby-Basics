arr = []
a = gets.chomp
arr << a
p arr.split('').map(&:to_i)
p arr.inject(:+)