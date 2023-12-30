# Luvun kolmas tehtävä on yksinkertainen luvunetsintäohjelma. Tee ohjelma, joka ensin pyytää käyttäjältä kokonaisluvun syötteellä "Anna aloituspaikka:". Tämän jälkeen ohjelma alkaa läpikäymään lukuja käyttäjän antamasta aloituspaikasta eteenpäin.

# Ohjelman tehtävänä on etsiä luku, joka on jaollinen luvuilla 3, 5 ja 7, eli siten että [luku] / [3, 5 tai 7] menee aina tasan ja tuottaa desimaalittoman (esim. 6.0, 1724) . Jos testattava luku ei mene tasan, tulostetaan "[luku] ei kelpaa..." ja siirrytään seuraavaan lukuun. Kun sopiva luku löytyy, tulostetaan "Sopiva luku löytyi: [luku]" ja lopetetaan ohjelma siihen paikkaan.

# Kannattaa huomata, että käytävien kierrosten määrää on hyvin vaikea ennustaa etukäteen, joten ohjelma kannattaa toteuttaa toistonohjauksen avulla. Lisäksi ohjelmaa tehtäessä kannattaa tutustua jakojäännös-operaattoriin (%).

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Anna aloituspaikka:
# 100
# 100 ei kelpaa...
# 101 ei kelpaa...
# 102 ei kelpaa...
# 103 ei kelpaa...
# 104 ei kelpaa...
# Sopiva luku löytyi: 105



puts "Anna aloituspaikka:"
paikka=gets.to_i

while true
	if ( paikka % 3 == 0) && (paikka % 5 == 0) && (paikka % 7 == 0)
		puts "Sopiva luku löytyi: #{paikka}"
		break
	else
		puts "#{paikka} ei kelpaa..."
	end
	paikka +=1
end
