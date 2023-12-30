

# Luvun toisessa tehtävässä harjoitellaan tiedostoon kirjoittamista luomalla ohjelma, joka jatkaa kirjoittamista niin kauan kunnes käyttäjä pyytää ohjelmaa lopettamaan. Ohjelma pyytää käyttäjältä syötettä käskyllä "Kirjoita jotain (lopeta lopettaa):" ja jatkaa niin kauan kunnes käyttäjä kirjoittaa lopeta. Tässä vaiheessa ohjelma tallentaa muun, aiemmin kirjoitetun tekstin tiedostoon, ja tulostaa käyttäjälle tiedoksi tiedon "Tiedostoon kirjoitettiin:\n [syötetty teksti}".

# Kirjoitus tehdään tiedostoon nimeltä "5-2_tiedosto.txt", joka tyhjennetään aina ennen tiedostoon kirjoittamista.

# Toimiessaan oikein ohjelma tulostaa vaikkapa seuraavaa:

# Example output:
# Kirjoita jotain (lopeta lopettaa):
# testii
# Kirjoita jotain (lopeta lopettaa):
# kalle
# Kirjoita jotain (lopeta lopettaa):
# lopeta
# Tiedostoon kirjoitettiin:
# testii
# kalle






#coding: utf-8
i = 0
kirja= File.open("5-2_tiedosto.txt","w")
while i.zero?
	print "Kirjoita jotain (lopeta lopettaa):\n"
	syöte = gets.chomp
	if syöte == "lopeta"
		kirja.close
		break
	else
		kirja.puts(syöte)
	end
end
puts "Tiedostoon kirjoitettiin:"
kirja = File.open("5-2_tiedosto.txt","r")
kirja.each{|rivi| print rivi}
kirja.close
