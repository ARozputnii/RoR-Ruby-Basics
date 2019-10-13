# Подключаем файл с методами содержащие в себе задачи.
require_relative 'methods'
# Подключаем файл с условиями задач , добавля знач.: только чтение
# и кодировку UTF-8 от греха подальше. 
# Вместо file.read вызываем метод .readlines, который 
# в отличие от предыдущего возвращает не одну большую строку, 
# а массив строк, разбитых по символам переноса.
 
file_path = "condition.txt"
f = File.new(file_path, "r:UTF-8")
lines = f.readlines
 
 
puts "Домашнее задание №1."
puts "Эта программа содержит все 50 задач."
puts "Список выполненных задач: "
p "1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 25, 26, 27, 28, 29, 30, 33, 34, 35, 36, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 65, 66, 77, 87, 88, 89, 90, 91, 92, 93, 94"
 
 
# Логика цикла такова: пока ввод пользователя не совпадает с ключём хеша @task
# зададим бесконечный цикл while. choice будет переменной в которую будет 
# сохраняться ввод пользователя.
choice = ""
  while choice != @task
    puts
    puts "Введите № задачи из списка: "
    choice = gets.chomp
    p lines[choice.to_i]
    print @task[choice.to_i]
  end