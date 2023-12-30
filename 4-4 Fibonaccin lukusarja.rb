# Luvun neljännessä tehtävässä toteutetaan Fibonaccin lukusarjaa laskeva ohjelma.

# Fibonaccin lukusarja on matemaattinen sarja, jossa sarjan seuraava luku on kahden edellisen luvun summa, eli uusi luku = edellinen luku + toiseksi uusin. Lukusarja menee siis seuraavalla tavalla: 0 1 1 2 3 5 8 13 21 ... jne.

# Tehtävänäsi onkin rakentaa ohjelma, joka laskee käyttäjälle lukusarjaa eteenpäin. Lähtötietona ohjelmalle voidaan kerta ensimmäiset kaksi lukua, 0 ja 1. Tämän jälkeen ohjelma kysyy "Montako kierrosta lasketaan?: ", ja tulostaa Fibonaccin lukusarjan lukuja annetun määrän muodossa "Seuraava Fibonaccin luku on [vastaus]".

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Montako kierrosta lasketaan?: 5
# Seuraava Fibonaccin luku on 1.
# Seuraava Fibonaccin luku on 2.
# Seuraava Fibonaccin luku on 3.
# Seuraava Fibonaccin luku on 5.
# Seuraava Fibonaccin luku on 8.

# coding: utf-8

print"Montako kierrosta lasketaan?: "
kierros = gets.to_i

FIBO = [0,1]

kierros.times do
	luku = FIBO[-1] + FIBO[-2]
	puts"Seuraava Fibonaccin luku on #{luku}."
	FIBO << luku
end
