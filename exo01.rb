def argument
	alphabet = ["a", "b", "c", "d", "e","f", "g", "h", "i", "j","k", "l", "m", "n", "o","p", "q", "r", "s", "t","u", "v", "w", "x", "y", "z"]

	saisie = /\D/
	if(ARGV.length != 1 || ARGV[0].split('').length != 1 || ARGV[0].match?(saisie) == false)
		puts "#{File.basename(__FILE__)} require just one alphabet character "
	else
		alphabet = alphabet.drop_while {|a| a < ARGV[0]}.join
  		puts alphabet
  	end
end


argument