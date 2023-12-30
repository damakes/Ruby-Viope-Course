# Luvun viimeinen tehtävä koskee satunnaislukugeneraattorin käyttämistä. Tee ohjelma, joka heittää 20-sivuista noppaa, eli käytännössä arpoo satunnaisluvun väliltä 1-20. Nopanheiton tulos ilmoitetaan käyttäjälle muodossa "Noppa heitti tuloksen [tulos]".

# Tehtävässä kannattaa muistaa, että satunnaislukugeneraattori arpoo luvun siten, että annettu yläraja ei kuulu tulokseen, mutta 0 kuuluu, eli vaikkapa rand(3) voi antaa vastauksen 0, 1 tai 2, muttei koskaan 3.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Noppa heitti tuloksen 9


# coding: utf-8
tulos = rand(20)+1
puts "Noppa heitti tuloksen #{tulos}"
