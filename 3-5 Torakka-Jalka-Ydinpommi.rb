# Luvun viimeinen tehtävä on luoda klassinen Torakka-Jalka-Ydinpommi-peli tietokoneelle. Pelin säännöt on yksinkertaiset; pelaaja ja tietokone valitsevat joko torakan, jalan tai ydinpommin. Jalka voittaa torakan, ydinpommi voittaa jalan ja torakka voittaa ydinpommin. Kyseessä ei siis ole todellakaan kivi-paperi-sakset-tyylinen peli.

# Joka kierroksen alussa pelaaja voi valita jonkin kolmesta vaihtoehdosta syötteellä "1: Torakka 2: Jalka 3: Ydinpommi 4: lopeta", "Valitse (1-4):". Tämän jälkeen tietokone valitsee omansa arpomalla satunnaisen vaihtoehdon. Tämän jälkeen tulostetaan tilanne "Valitsit [valinta], tietokone valitsi [valinta].", sekä lopputulos "Tietokone voitti.", "Voitit!" tai "Valitsitte saman, tasapeli.". Kierroksen lopuksi vielä tulostetaan tilanne muodossa "Peli on pelaaja [pelaajan voittamat kierrokset] : tietokone [tietokoneen voittamat kierrokset]"

# Tavallisuudesta poiketen tässä tehtävässä siis tarvitaan seuraavan luvun toistorakenteita ratkaisun toteuttamiseen, joten mikäli tehtävä tuntuu tässä vaiheessa vaikealta, kannattaa tähän tehtävään palata seuraavan luvun päätteeksi.

# Toimiessaan oikein erä tietokonetta vastaan voi olla vaikka seuraavanlainen:

# Example output:
# 1: Torakka 2: Jalka 3: Ydinpommi 4: lopeta
# Valitse (1-4):
# 3
# Valitsit ydinpommin, tietokone valitsi torakan.
# Tietokone voitti.
# Peli on pelaaja 0 : tietokone 1
# 1: Torakka 2: Jalka 3: Ydinpommi 4: lopeta
# Valitse (1-4):
# 4

# coding: utf-8

Torakka_Jalka_Ydinpommi = ["torakan", "jalan", "ydinpommin"]
pelaajan_pisteet = 0
tietokoneen_pisteet = 0

PELAAJA = 1
TASAPELI = 0
TIETOKONE = -1
TORAKKA = 0
JALKA = 1
YDINPOMMI = 2
LOPETA = 3

# Kysy käyttäjältä hänen valintansa
def kysyValinta()
	puts "1: Torakka 2: Jalka 3: Ydinpommi 4: lopeta"
	puts "Valitse (1-4):"

	valinta = gets.to_i - 1

	return nil if valinta == LOPETA
	return valinta
end

# pelaaja on ensimmäisen pelaajan tekemä valinta
# kone on toisen pelaajan tekemä valinta
# Kutsuu itseään käännetyillä arvoilla jos sopivaa ehtoa ei löydy
# Palauttaa 1 tai -1 sen mukaan kumpi voitti
def tulosLaskenta(pelaaja, kone, kerroin = 1)
	return TASAPELI if pelaaja == kone
	return kerroin if pelaaja == JALKA && kone == TORAKKA
	return kerroin if pelaaja == YDINPOMMI && kone == JALKA
	return kerroin if pelaaja == TORAKKA && kone == YDINPOMMI
	return tulosLaskenta(kone, pelaaja, -1) if kerroin == 1
end

loop do
	# Kysy pelaajan valinta
	pelaajan_valinta = kysyValinta()
	break if pelaajan_valinta.nil?

	# Arvo tietokoneen valinta
	tietokoneen_valinta = rand(3)

	# Laske kumpi voitti
	tulos = tulosLaskenta(pelaajan_valinta, tietokoneen_valinta)

	# Kerro valinnat
	if tulos == TASAPELI
		puts "Valitsitte saman, tasapeli."
	else
		puts "Valitsit #{Torakka_Jalka_Ydinpommi[pelaajan_valinta]}, tietokone valitsi #{Torakka_Jalka_Ydinpommi[tietokoneen_valinta]}."

		if tulos == PELAAJA
			puts "Voitit!"
			pelaajan_pisteet += 1
		elsif tulos == TIETOKONE
			puts "Tietokone voitti."
			tietokoneen_pisteet += 1
		end
	end

	# Kerro pelitilanne
	puts "Peli on pelaaja #{pelaajan_pisteet} : tietokone #{tietokoneen_pisteet}"
end

# Löysin apua tähän tehtävään : https://gist.github.com/petja
