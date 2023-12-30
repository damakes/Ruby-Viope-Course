# Kolmas tehtävä käsittelee merkkijonojen leikkauksia. Tee ohjelma, joka ensin pyytää käyttäjältä syötettä muodossa "Kirjoita jotain: ". Tämän jälkeen poista syötteen loppuun tuleva rivinvaihto.

# Seuraavaksi ohjelma tulostaa kolme leikkausta. Ensimmäiseksi tulostetaan ensimmäisen kolme merkkiä muodossa "Ensimmäiset kolme kirjainta: [leikkaus]", tämän jälkeen viimeiset kaksi merkkiä muodossa "Viimeiset kaksi merkkiä: [leikkaus]" ja lopuksi kaikki merkit kolmannesta eteenpäin muodossa "Kolmannesta merkistä eteenpäin: [leikkaus]"

# Tehtävässä voidaan olettaa, että käyttäjä ymmärtää antaa riittävän pitkän merkkijonon syötteenä, joten tähän ei tarvitse erikseen varautua eikä sitä tarvitse erikseen tarkastaa.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Kirjoita jotain:
# Apina?
# Ensimmäiset kolme merkkiä: Api
# Viimeiset kaksi merkkiä: a?
# Kolmannesta merkistä eteenpäin: ina?


#coding: 8-utf
puts "Kirjoita jotain: "

leikkaus=gets.chomp!

puts "Ensimmäiset kolme merkkiä: #{leikkaus[0, 3]}"
puts "Viimeiset kaksi merkkiä: #{leikkaus[-2, 2]}"
puts"Kolmannesta merkistä eteenpäin: #{leikkaus[2..-1]}"
