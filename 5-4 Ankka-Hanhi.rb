# Tiedostojenkäsittelyn neljäs tehtävä käsittelee myös tiedostojen sisällön tutkimista. Tällä kertaa palvelimelle on luotu tiedosto "5-4_tiedosto.txt", johon on tallenettu riville joko teksti "ankka" tai "hanhi". Koska hanhet on varsin ikäviä eläimiä, halutaan etukäteen selvittää, millä tiedoston riveillä hanhia sijaitsee.

# Tee siis ohjelma, joka avaa tiedoston, ja läpikäy sen rivi riviltä. Jos rivillä lukee "hanhi", tulostetaan käyttäjälle varoitus "Hanhi rivillä [rivinumero]!". Rivinumerointi alkaa 1:stä, eli tiedoston ensimmäinen rivi on rivi numero 1.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Hanhi rivillä 7!
# Hanhi rivillä 14!


# coding: uitf-8

portti = File.open("5-4_tiedosto.txt", "r")

hälytys = 1

File.foreach(portti) do |tarkistus|
	tarkistus = tarkistus.downcase
	if tarkistus.to_s.include?('hanhi')
		puts "Hanhi rivillä #{hälytys}!"
	end
	hälytys += 1
end

portti.close
