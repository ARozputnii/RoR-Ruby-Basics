class Pets


 def initialize
   @name 
   $hp = 100
   $hunger = 50
   $power = 50
   $mood = 50
 end 

 # погодувать
 def feed
   $hunger = $hunger - rand(5...50)
   $power = $power + rand(5...10)
   $mood = $mood + rand(-20...20)
   $message = "Вы покормили своего малыша"
   $message = "#{@name} рад что его кормили :)"
   change_hp
 end
 # играть
 def play
   $hunger = $hunger + rand(5...40)
   $mood = $mood - rand(10...30)
   $power = $power - rand(10...20)
   $message = "Вы одели на #{@name} намордник и пошли гулять в парк. "
   change_hp
 end
 # вкласти спати
 def sleep
   $mood = $mood + rand(-30...30)
   $power = $power + rand(20...60)
   $hunger = $hunger + rand(20...50)
   change_hp
   $message = "#{@name} пошёл спать"
   
 end
 # прогулятися
 def walk
   $mood = $mood + rand(30...50)
   $power = $power - rand(5...10)
   $hunger = $hunger + rand(20...40)
   change_hp

   $message = 'Вы пошли гулять на улицу со своим животным. '
 end

  #поспостерігати
 def follow
   r = rand(1..4)
   case r
     when 1
     $message = "#{@name} начал играться и погрыз диван, вам пришлось у воспитательных целять показать кто в доме man"
     $hp = $hp - rand(5...30)
     $hunger = $hunger + rand(5...10)
     $mood = $mood - rand(0...20)
     $power = $power - rand(10...20)
     change_hp
     when 2
     $message = "#{@name} притащил в зубах тапочки к постели"
     $hunger = $hunger + rand(5...10)
     $mood = $mood + rand(10...20)
     $power = $power - rand(0...10)
     change_hp
     when 3
     $message = "#{@name} вырвался на улицу и встретил shemale. Вернулся грязный но очень доволен :)"
     $hunger = $hunger + rand(5...10)
     $mood = $mood + rand(40...80)
     $power = $power - rand(5...40)
     change_hp
     when 4
     $message = "залип глядя в окно"
     $hunger = $hunger + rand(5...10)
     $mood = $mood + rand(0...5)
     $power = $power + rand(0...5)
     change_hp
   end
 end
 # Функція виводить характеристики тамагочі


  def wash
   $message = "Теперь ваш любимчик пахнет ромашками"
   $hunger = $hunger + rand(5...10)
   $mood = $mood + rand(0...5)
   $power = $power + rand(0...5)
   change_hp
 end
  def training
   $message = "#{@name} хорошо поддается дрессировки . Ему нравится что ты придаешь ему внимание. Не забудь покормить его."
   $hunger = $hunger + rand(10...20)
   $mood = $mood + rand(20...35)
   $power = $power + rand(10...25)
   change_hp
 end
 def fleas
   $message = "Свершилось!!! Ты это сделал. теперь он будет более счастлив и добр к тебе"
   $hunger = $hunger + rand(0...5)
   $mood = $mood + rand(0...5)
   $power = $power + rand(0...5)
   change_hp
 end


  #  $status = "Health: #{$hp} Голод: #{$hunger} Сила: #{$power} Настроение: #{$mood}"
 	
 private

 def change_hp
   if $hunger.to_i > 100
   		$hunger = 100
     $hp -= rand(10...20)
     $message = " #{@name} ну очень голоден покорми уже его , изверг"
   elsif $hunger.to_i < 0
		$hunger = 0
     $hp += rand(0...5)
     $message = "Freeeesh meeeeaat "
     end
   if $mood.to_i > 100
   	$mood = 100
    $hp += rand(0...5) 
   elsif $mood.to_i < 0
   	$mood = 0
    $hp -= rand(1...5)
    $message = "#{@name} имеет плохое настроение "
    end
   if @pover.to_i > 100
   	@pover = 100
    $hp += rand(5...10) 
   elsif @pover.to_i < 0
   	@pover = 0
    $hp -= rand(5...10) 
    $message = "#{@name} чувствует себя очень хорошо"
    end
   if $hp <= 0
     $message = " Gameover"
   end
 end 
end

