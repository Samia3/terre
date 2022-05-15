def argument 
	saisie = /\A[-+]?\d+\z/
	if(ARGV.length != 2)
		puts "mettez 2 arguments"
	elsif(ARGV[0].match?(saisie) == false || ARGV[1].match?(saisie) == false)
		puts "mettez que des chiffre SVP"
	else
		calcule
	end
end

def calcule
	var1 = ARGV[0].to_i
	var2 = ARGV[1].to_i

	if(var1 < var2|| var2 <= 0 || var1 < 0)
		puts "error"
	else
		resultat = var1/var2
		reste = var1%var2
		puts 'resultat :' + "#{resultat}"
		puts 'reste :' + "#{reste}"
	end
end

argument