

songs = [
    "Phoenix - 1901",
    "Tokyo Police Club - Wait Up",
    "Sufjan Stevens - Too Much",
    "The Naked and the Famous - Young Blood",
    "(Far From) Home - Tiga",
    "The Cults - Abducted",
    "Phoenix - Consolation Prizes",
    "Harry Chapin - Cats in the Cradle",
    "Amos Lee - Keep It Loose, Keep It Tight"
  ]

# Add your code here

def help

    puts "/I accept the following commands:/"
    puts "/- help : displays this help message/"
    puts "/- list : displays a list of songs you can play/"
    puts "/- play : lets you choose a song to play/"
    puts "/- exit : exits this program/"
end 

def list(songs)

  songs.each_with_index  do |value, song_index|

    puts "/#{song_index + 1}. #{songs[song_index]}/"
  end 

end 


def play(songs)

  puts "Please enter a song name or number:"
  song_choice = gets.strip 
  song_choice_num = song_choice.to_i

  songs.each_with_index do |value, index|

    if song_choice == value || song_choice_num == (index + 1)
      puts "Playing #{value}"
      return nil 
    end 
  end 
  
  #runs through loop of entire array. If not found, outputs text below: 
  puts "Invalid input, please try again"
  return nil 
end 


def exit_jukebox
  puts "Goodbye"
end 

def run (songs)

  puts "Please enter a command:"
  command = gets.strip 

  if command == "exit"
    exit_jukebox
  end 

  while command != "exit" do 

    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    elsif command =="exit"
      exit_jukebox
    end 

    puts "Please enter a command:"
    command = gets.strip 
  end 
  

end 