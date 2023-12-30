# Luvun kolmas tehtävä on jälleen eräänlainen hyötyohjelma. Tällä kertaa tarkoituksena on luoda ohjelma, joka luo uusia sanasalasanoja, jotka muodostuvat yhdeksästä satunnaisesta kirjaimesta.

# Ohjelmaa varten on luotu tieto 7-3_tieto.txt, jossa on 1000 satunnaista kirjain- ja numeromerkkiä. Tee seuraavaksi ohjelma, joka pyytää käyttäjältä 9 lukua väliltä 0-999 muodossa "Anna X. luku väliltä 0-999: ". Tämän jälkeen tee ohjelma, joka hakee tietosta lukua vastaavan merkin, eli jos käyttäjä antaa arvon 0, haetaan tieton ensimmäinen merkki, jos 876, haetaan merkki joka on tieton 876. paikalla.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Luodaan salasana.
# Anna 1. luku väliltä 0-999: 234
# Anna 2. luku väliltä 0-999: 22
# Anna 3. luku väliltä 0-999: 1
# Anna 4. luku väliltä 0-999: 76
# Anna 5. luku väliltä 0-999: 45
# Anna 6. luku väliltä 0-999: 23
# Anna 7. luku väliltä 0-999: 27
# Anna 8. luku väliltä 0-999: 87
# Anna 9. luku väliltä 0-999: 3
# Ohjelma loi salasanan cf5HAsu66


viitta = []
tieto = File.open("7-3_tiedosto.txt","r")
tieto.each_char {|rivi| viitta.push(rivi)}
tieto.close


salasana = []

puts "Luodaan salasana."
for i in 1..9 do
	print "Anna "+i.to_s+". luku väliltä 0-999: "
	luku = gets.chomp
	salasana.push(viitta[luku.to_i])
end
	puts "Ohjelma loi salasanan "+salasana.join.to_s
