def argument
    saisie = /([0][0-9]|[1][0-2]):([0-5][0-9])(AM|PM)/

    arg = ARGV[0]

    if(ARGV.length != 1)
        puts "#{File.basename(__FILE__)} require only one arguments"

    elsif(arg.match?(saisie) == false)
        puts "Veuillez introduire l'heure au format 12h ==> HH:MM(AM|PM)"
    else 
        heure 
    end
end

def heure 
    var1 = ARGV[0].split('').slice(5,6).join
    var2 = ARGV[0].split('').slice(0,2).join
    
    if( var1 == "AM" && var2 == "12")
        puts "00" << ARGV[0].split('').slice(2,3).join
    elsif( var1 == "PM" && var2 == "12")
        puts "12" << ARGV[0].split('').slice(2,3).join
    elsif(var1 == "PM" || var2 == "00")
        puts (var2.to_i + 12).to_s << ARGV[0].split('').slice(2,3).join
    else
        puts ARGV[0].split('').slice(0,5).join
    end
 

end


argument
