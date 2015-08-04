$songs = [
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

def get_input
	puts "Please enter another command"
	response = gets.chomp.downcase
	check_response(response)
end

def check_response(response)
	case response
	when "help"
		puts "Here are your options: 
		help = get help
		list = get list of available songs
		play = play song you want
		exit = turn off jukebox"
		get_input
	when "list"
		puts $songs
		get_input
	when "play"
		puts "Which song do you want to play?"
		user_song = gets.chomp.downcase
		if $songs.any? {|s| /#{user_song}/ =~ s.downcase}
			puts "#{user_song.split.map(&:capitalize).join(" ")} is playing"
		else
			puts "Not found in jukebox. Please select another song."
		end
		get_input
	when "exit"
		abort("Jukebox is turned off. Thanks for playing!")
	else
		puts "Please enter one of the following commands: help, list, play, exit"
	end
end

def play
	puts "Welcome to Jukebox! Please enter a command"
	response = gets.chomp
	check_response(response)
end

play