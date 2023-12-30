# Luvun toisessa tehtävässä kokeillaan muuttujien tekemistä ja käyttämistä. Määrittele kaksi muuttujaa, joista ensimmäiselle annetaan arvoksi merkkijono "Tekstiä!" ja toiselle kokonaisluku 100. Tämän jälkeen määrittele kolmas muuttuja käyttäen apunasi muuttujaa, johon määriteltiin kokonaisluku 100. Kerro muuttujan arvo kahdella, ja jaa tämä tulos kymmenellä.

# Laita tämän jälkeen muuttujan arvo osaksi tulostettavaa tekstiä seuraavasti: "Muuttujia voi laittaa tulosteisiin: [muuttujan arvo]", sekä laskun lopputulos muodossa: "Niillä voi myös laskeä: [vastaus]"

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Muuttujia voi laittaa tulosteisiin: Tekstiä!
# Niillä voi myös laskea: 20



#coding utf-8
m1 = "Tekstiä!"
m2 = 100
m3 = m2 * 2/ 10


puts "Muuttujia voi laittaa tulosteisiin: " + m1
puts "Niillä voi myös laskea: " + m3.to_s
