# coding utf-8

def muokkaa(tieto)
	muutettu = tieto.chop
	muutettu.gsub!("a","y")
	muutettu.gsub!("l","g")
	muutettu.upcase!
	return muutettu
end

puts "Kirjoita jotain: "
syöte = gets
muuta = muokkaa(syöte)
puts "Käsittelyn jälkeen tulos on: #{muuta}"
