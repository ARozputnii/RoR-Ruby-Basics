# encoding: UTF-8
require_relative 'method.rb'

class Pets
 attr_reader :command
 def initialize(name)
 @name = name
 @hp = 100
 @hunger = 50
 @power = 50
 @mood = 50
 @arr = []
 @command = %w(feed play sleep walk help follow status wash training fleas quit)
 end 

 # погодувать
 def feed
   @hunger = @hunger - rand(5...50)
   @power = @power + rand(5...10)
   @mood = @mood + rand(-20...20)
   p "Вы покормили своего малыша"
   p "#{@name} рад что его кормили :)"
   change_hp
 end
 # играть
 def play
   @hunger = @hunger + rand(5...40)
   @mood = @mood - rand(10...30)
   @power = @power - rand(10...20)
   p "Вы одели на #{@name} намордник и пошли гулять в парк. "
   change_hp
 end
 # вкласти спати
 def sleep
   @mood = @mood + rand(-30...30)
   @power = @power + rand(20...60)
   @hunger = @hunger + rand(20...50)
   change_hp
   p "#{@name} пошёл спать"
   
 end
 # прогулятися
 def walk
   @mood = @mood + rand(30...50)
   @power = @power - rand(5...10)
   @hunger = @hunger + rand(20...40)
   change_hp

   p 'Вы пошли гулять на улицу со своим животным. '
 end
 # викликати підказки команд
 def help
   s = '.'
   n = 10
   p @command[0].ljust(n, s) + 'покормить'
   p @command[1].ljust(n, s) + 'поиграть'
   p @command[2].ljust(n, s) + 'отправить спать'
   p @command[3].ljust(n, s) + "прогулятся"
   p @command[4].ljust(n, s) + 'посмотреть все команды'
   p @command[5].ljust(n, s) + "Наблюдать за #{@name}"
   p @command[6].ljust(n, s) + "уровень здоровья"
   p @command[7].ljust(n, s) + "помыть " 
   p @command[8].ljust(n, s) + "дрессировать"
   p @command[9].ljust(n, s) + "вычесать блох "
   p @command[10].ljust(n, s) + "quit"
 end
 # поспостерігати
 def follow
   r = rand(1..4)
   case r
     when 1
     p "#{@name} начал играться и погрыз диван, вам пришлось у воспитательных целять показать кто в доме man"
     @hp = @hp - rand(5...30)
     @hunger = @hunger + rand(5...10)
     @mood = @mood - rand(0...20)
     @power = @power - rand(10...20)
     change_hp
     when 2
     p "#{@name} притащил в зубах тапочки к постели"
     @hunger = @hunger + rand(5...10)
     @mood = @mood + rand(10...20)
     @power = @power - rand(0...10)
     change_hp
     when 3
     p "#{@name} вырвался на улицу и встретил shemale. Вернулся грязный но очень доволен :)"
     @hunger = @hunger + rand(5...10)
     @mood = @mood + rand(40...80)
     @power = @power - rand(5...40)
     change_hp
     when 4
     p "залип глядя в окно"
     @hunger = @hunger + rand(5...10)
     @mood = @mood + rand(0...5)
     @power = @power + rand(0...5)
     change_hp
   end
 end
 # Функція виводить характеристики тамагочі
 def status
   p "Health: #{@hp}"
 end

def wash
   p "Теперь ваш любимчик пахнет ромашками"
   @hunger = @hunger + rand(5...10)
   @mood = @mood + rand(0...5)
   @power = @power + rand(0...5)
 end
def training
   p "#{@name} хорошо поддается дрессировки . Ему нравится что ты придаешь ему внимание. Не забудь покормить его."
   @hunger = @hunger + rand(10...20)
   @mood = @mood + rand(20...35)
   @power = @power + rand(10...25)
 end
 def fleas
   p "Свершилось!!! Ты это сделал. теперь он будет более счастлив и добр к тебе"
   @hunger = @hunger + rand(0...5)
   @mood = @mood + rand(0...5)
   @power = @power + rand(0...5)
 end

 private

 @arr = %w(I wish you a good time when I will be your president, you will be my pet, I want to the sea, feed me, you are stupid but it's not bad, if I were a bird, you are good)
 def change_hp
   if @hunger.to_i > 100
     @hp -= rand(10...20)
     puts " #{@name} голоден"
   elsif @hunger.to_i >120
     @hp -= rand(20...50)
      puts " #{@name} ну очень голоден покорми уже его , изверг"
   elsif @hunger.to_i > 200
     @hp -= rand(50...80)  
     puts "Ваш любимчик злобно на Вас смотрит. Вы так и не покормили его."
   elsif @hunger.to_i < 0

     @hp += rand(0...5)
     puts "Freeeesh meeeeaat "
     end
   if @mood.to_i > 100
    @hp += rand(0...5) 
   elsif @mood.to_i < 0
    @hp -= rand(1...5)
    puts "#{@name} имеет плохое настроение "
    end
   if @pover.to_i > 100
    @hp += rand(5...10) 
   elsif @pover.to_i < 0
    @hp -= rand(5...10) 
    puts "#{@name} чувствует себя очень хорошо"
    end
   if @hp <= 0
     p " Gameover"
     puts "Your pets dead"
     puts "Вы плохой хазяин, Гринпис уже едет за Вами."
     exit
   end
 end 
end

#### MAIN


p " ____________Tamagotchi___________ "

while true
 pets_list = %w(Cat Dog Putin)
 $string = "Пожалуйста, выберите себе животное (нажмите цифру)"
 $puts_html
 pets_list.length.times {|a| p (a + 1).to_s + ' ' + pets_list[a]}

 chose_pet = gets.chomp.to_i
  while true
   case chose_pet
    when 1
    my_pet = Pets.new(pets_list[0])
    break
    when 2
    my_pet = Pets.new(pets_list[1])
    break
    when 3
    my_pet = Pets.new(pets_list[2])
    break
    else
    p 'нужно нажать цифру от 1 до 3'
    chose_pet = gets.chomp.to_i
   end
 end
 p "Твой питомец #{pets_list[chose_pet - 1]}." 
 p "Тебе нужно заботитьтся о нём. Удачи."
 p "Введите 'help' для для просмотра списка действий"

 print 'Выберите действе: '
  
 command = gets.chomp.downcase

  
 #feed play sleep walk help follow status day quit
 while command != 'stop'
  puts "________________________________________"
   
   p "Если Вам нужна помощь - введите 'help'"
   puts "________________________________________"
  my_pet.status
  puts "________________________________________"
    case command
     when my_pet.command[0]
     my_pet.feed
     when my_pet.command[1]
     my_pet.play
     when my_pet.command[2]
     my_pet.sleep
     when my_pet.command[3]
     my_pet.walk
     when my_pet.command[4]
     my_pet.help
     when my_pet.command[5]
     my_pet.follow
     when my_pet.command[6]
     my_pet.status
     when my_pet.command[7]
     my_pet.wash
     when my_pet.command[8]
     my_pet.training
     when my_pet.command[9]
     my_pet.fleas
     when my_pet.command[10]
     break
    else
     print "Некоректный ввод, повторите: "
    end
    my_pet.status
  puts "________________________________________"
   print 'Выберите следующую команду: '
   


   command = gets.chomp.downcase
  end
end