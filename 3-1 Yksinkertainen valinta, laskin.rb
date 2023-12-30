# Ensimmäisessä tehtävässä kootaan laskin, jolla on kolme mahdollista toimintatapaa. Aloitetaan ohjelma sillä, että pyydetänä käyttäjältä kaksi syötettä tekstillä "Anna 1. luku:" ja "Anna 2. luku:" , jotka tallennetaan kahteen eri muuttujaan, ja muutetaan ne liukuluvuiksi tyyppimuunnoksella. Tämän jälkeen esitetään käyttäjälle vaihtoehdot muodossa "(Y)hteen-, (V)ähennys- vai (K)ertolasku?" ja tallennetaan käyttäjän valinta kolmanteen muuttujaan.


# Jos käyttäjä antoi syötteen "Y", lasketaan syötetyt arvot yhteen. Jos "V", vähennetään ne toisistaan ja jos "K", kerrotaan ne keskenään. Lopuksi annetaan vastaus "Tulos on [vastaus]". Jos käyttäjä ei valitse joko "Y", "V" tai "K", tulostetaan teksti "Virheellinen valinta." Ohjelma lopetetaan kun vastaus on tulostettu, ja lisksi voidaan olettaa, että käyttäjä ymmärtää antaa numeroarvoksi muuntuvan syötteen lukuihin, sekä ymmärtää, että laskutoimituksen valinta tehdään käyttäen isoja kirjaimia.


# Toimiessaan oikein ohjelma tulostaa seuraavaa:


# Example output:
# Anna 1. luku:
# 2
# Anna 2. luku:
# 3
# (Y)hteen-, (V)ähennys- vai (K)ertolasku?
# K
# Tulos on 6.0


# coding: utf-8

puts"Anna 1. luku: "
luku1=gets.chomp.to_f
puts"Anna 2. luku: "
luku2=gets.chomp.to_f

puts "(Y)hteen-, (V)ähennys- vai (K)ertolasku?"
valinta=gets.chomp.upcase

if  valinta == "Y"
	Yhteen=luku1 + luku2
	puts"Tulos on #{Yhteen}"

elsif valinta == "V"
	Vähennys = luku1 - luku2
	puts"Tulos on #{Vähennys}"

elsif valinta == "K"
	Kertolasku = luku1 * luku2
	puts "Tulos on #{Kertolasku}"
else
	puts "virheellinen valinta"
end
