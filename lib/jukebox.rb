# Optional greeting code 
# def say_hello(name)
  
#   puts "Hi #{name}!"
# end 

# puts "Enter your name:"
# users_name = gets.strip 

# puts say_hello(users_name)

require "pry"

def help 
  
  puts "I accept the following commands:"
  #puts "/-help : displays this help message/"
  puts /- help : displays this help message/ 
  puts /- list : displays a list of songs you can play/
  puts /- play : lets you choose a song to play/
  puts /- exit : exits this program/
end 

def play(songs)
  
  puts "Please enter a song name or number:"
  input = gets.chomp  
  if songs.include?(input) == true 
    puts "Playing #{input}"
  elsif input.to_i < songs.length  
    puts "Playing #{songs[input.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
  
end 

def list(songs)
  
  songs.each_with_index do |item, index|
    
    puts "#{index+1}. #{item}"
  end 
end 

def exit_jukebox
  puts /Goodbye/
end 

def run(songs)
  puts /Please enter a command:/
  input = gets.strip 
  
  if input == "help"
    help
  elsif input =="exit"
    exit_jukebox 
  elsif input == "play"
    play(songs)
  elsif input == "list"
    list(songs)
  end 
end 
