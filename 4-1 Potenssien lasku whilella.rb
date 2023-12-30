# Luvun ensimmäisenä tehtävänä tehdään yksinkertainen while-toistoon pohjautuva laskuri, joka laskee käyttäjän antamasta luvusta 10 ensimmäistä potenssia. Eli jos käyttäjä vaikka antaa arvon 3, lasketaan 2. kierroksella laskutoimituksen 3*3 tulos, kolmannella 3*3*3 tulos jne...

# Ohjelma alkaa pyytämällä käyttäjältä luvun muodossa "Anna luku: " ja tämän jälkeen tulostaa potenssit muodossa "[kierros]. potenssi on [tulos]". Ohjelma siis tarvitsee erikseen muuttujan jolla seurataan kierrosmäärää, sekä toisen muuttujan johon joka kierroksella lasketaan uusi tulos. Ohjelma lopettaa automaattisesti kun 10. potenssin tulos on laskettu ja tulostettu.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Anna luku:
# 3
# 1. potenssi on 3
# 2. potenssi on 9
# 3. potenssi on 27
# 4. potenssi on 81
# 5. potenssi on 243
# 6. potenssi on 729
# 7. potenssi on 2187
# 8. potenssi on 6561
# 9. potenssi on 19683
# 10. potenssi on 59049


# coding: 8-utf

puts "Anna luku: "
arvo = gets.to_i

for i in 1..10 do
	puts "#{i}. potenssi on #{arvo**i}"
end
