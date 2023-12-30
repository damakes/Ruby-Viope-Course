# Luvun neljännessä tehtävässä harjoitellaan case-valinnan käyttöä, sekä luodaan arkielämää helpottava, erehtymätön, Oraakkeli-ohjelma. Ohjelma käynnistyy antamalla lyhyen selityksen itsestään: "Oraakkeli vastaa kyllä/ei-muodossa". Tämän jälkeen pyydetään käyttäjältä kysymys "Kirjoita kysymyksesi Oraakkelille:". Tämän jälkeen ohjelma arpoo luvun väliltä 0-99 ja vastaa käyttäjälle seuraavassa muodossa:

# "Kysymyksesi oli: [esitetty kysymys]", "Tähän Oraakkeli vastasi:" ja mikäli satunnaisluku oli 0-19, "Ei missään nimessä!", 20-44 "Ei varmaankaan", 45-54 "En osaa sanoa.", 55-79 "Luultavasti kyllä." ja 80-99 "Ehdottomasti kyllä".

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Oraakkeli vastaa kyllä/ei-muodossa
# Kirjoita kysymyksesi Oraakkelille:
# Onko nyt hyvä päivä?
# Kysymyksesi oli: Onko nyt hyvä päivä?
# Tähän Oraakkeli vastasi:
# En osaa sanoa.


# coding: utf-8

puts "Oraakkeli vastaa kyllä/ei-muodossa"
puts "Kirjoita kysymyksesi Oraakkelille:"

k = gets.chomp
v = ""

luku = rand(100)
puts "Kysymyksesi oli: #{k}"

case luku
	when 0..19 then
		v="Ei missään nimessä!"
	when 20..44 then
		v="Ei varmaankaan"
	when 45..54 then
		v="En osaa sanoa."
	when 55..79 then
		v="Luultavasti kyllä."
	when 80..99 then
		v="Ehdottomasti kyllä."
	end
print "Tähän Oraakkeli vastasi:\n" + v
