
# Luvun toisessa tehtävässä tehdään ohjelma, joka käsittelee koordinaatistoa. Tee ohjelma, joka pyytää käyttäjältä X-akselin ja Y-akselin arvot kokonaislukuina. Tämän jälkeen tee ohjelmaan valintarakenne, joka päättelee missä kohtaa 10*10-koordinaatistoa käyttäjä on:

# Jos X- ja Y-arvo on pienempi kuin 5, tulostetaan "Olet vasemmassa alakulmassa.". Jos X on pienempi, mutta Y suurempi tai yhtäsuuri kuin 5, tulostetaan "Olet vasemmassa yläkulmassa.". Vastaavasti X >=5 ja Y < 5 tulostaa "Olet oikeassa alakulmassa." ja molempien ollessa viisi tai enemmän, "Olet oikeassa yläkulmassa.". Lisäksi, jos jompikumpi luvuista on pienempi kuin nolla, tulostetaan "Annoit negatiivisen arvon.".

# Toimiessaan oikein ohjelma tulostaa seuraavaa:


# Example output:
# Valitse x-akselin arvo väliltä 0-9: 2
# Valitse y-akselin arvo väliltä 0-9: -6
# Annoit negatiivisen arvon.


# coding: utf-8

print "Valitse x-akselin arvo väliltä 0-9: "
x = gets.chomp.to_i
print "Valitse y-akselin arvo väliltä 0-9: "
y = gets.chomp.to_i


if x < 0 || y < 0
	puts "Annoit negatiivisen arvon."
elsif x < 5 && y < 5
	puts "Olet vasemmassa alakulmassa."
elsif x < 5 && y >= 5
	puts "Olet vasemmassa yläkulmassa."
elsif x >= 5 && y < 5
	puts "Olet oikeassa alakulmassa."
else
	puts "Olet oikeassa yläkulmassa."
end
