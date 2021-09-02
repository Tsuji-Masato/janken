def game
puts "最初はグー、じゃんけん..."

def janken
puts "[0]:グー,[1]:チョキ,[2]:パー,[3]:戦わない"
puts "-----------------------------------------"

player_hand = gets.to_i
puts "ホイッ！！"
puts "-----------------------------------------"

program_hand = rand(3)

if player_hand > 3
	puts "入力された値が無効です"
	puts "-----------------------------------------"
	return true
elsif player_hand == 3
	puts "じゃんけんを終了します"
	puts "-----------------------------------------"
	return false
end

jankens = ["グー","チョキ","パー"]

puts "あなたの手:#{jankens[player_hand]}, プログラムの手:#{jankens[program_hand]}"

if player_hand == program_hand
	puts "あいこで〜..."
	puts "-----------------------------------------"
	return true
elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
	puts "あなたの勝ち"
	puts "-----------------------------------------"
	@result = "win" 
   return false
else
	puts "残念...あなたの負け"
	puts "-----------------------------------------"
	@result = "lose"
	return false
end
end

next_game = true

while next_game
  next_game = janken
end

if @result == "win"
 puts "あっち向いて〜..."
 puts "[0]:上,[1]:右,[2]:下,[3]:左"
 puts "-----------------------------------------"
 
 player_look = gets.to_i
 puts "ホイッ！！"
 puts "-----------------------------------------"

 program_look = rand(4)

 if player_look > 3
	 puts "入力された値が無効です"
	 puts puts "-----------------------------------------"
	 return true
 end

 look_this_way = ["上","右","下","左"]

 puts "あなた:#{look_this_way[player_look]},プログラム:#{look_this_way[program_look]},"

 if player_look == program_look
	 puts "あなたの勝ち！"
	 puts "-----------------------------------------"
	 return false
 else
  puts "引き分け"
	 return true
 end
end

if @result == "lose"
 puts "あっち向いて〜..."
 puts "[0]:上,[1]:右,[2]:下,[3]:左"
 puts "-----------------------------------------"
 
 player_look = gets.to_i
 puts "ホイッ！！"
 puts "-----------------------------------------"

 program_look = rand(4)

 if player_look > 3
	 puts "入力された値が無効です"
	 puts puts "-----------------------------------------"
	 return true
 end

 look_this_way = ["上","右","下","左"]

 puts "あなた:#{look_this_way[player_look]},プログラム:#{look_this_way[program_look]},"

 if player_look == program_look
	 puts "残念...あなたの負け"
	 puts "-----------------------------------------"
	 return false
 else
  puts "引き分け"
	 return true
 end
end
end

next_game = true

while next_game
 next_game = game
end