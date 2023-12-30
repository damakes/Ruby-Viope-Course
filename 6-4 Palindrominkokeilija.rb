def palindrominkokeilija(merkkijono)

  if merkkijono.length < 5
    return false
  end
  testi = merkkijono.upcase
  testi.gsub!(" ","")

  if testi == testi.reverse
    return true
    else
      return nil
    end
  end

while true
print "Kirjoita testattava lause: "
kokeile = gets
kokeile.chop!
tulos = palindrominkokeilija(kokeile)


if tulos == true
  puts "#{kokeile} on palindromi."
  elsif tulos == false
    puts "#{kokeile} ei ole kelvollinen sana."
  else
    puts "#{kokeile} ei ole palindromi; se on väärinpäin #{kokeile.reverse}."
  end

  print "Testataanko lisää? (k/e): "
  tulos = gets

  if tulos != "k\n"
    break
  end
end
