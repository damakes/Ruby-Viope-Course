# Luvun toisessa harjoitustehtävässä jatketaan merkkijonoilla työskentelyä. Määritellään muuttuja, jolle annetaan arvoksi merkkijono "Balin palapelitehdas!!". Hyödyntäen merkkijonoille käytettävissä olevia metodeja, tee seuraavat muutokset; Ensinnäkin, poista merkkijonosta kaksi viimeistä merkkiä. Toisekseen, korvaa kaikki "li"-kohdat merkkijonosta "ke"-merkkijonolla.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Baken palapeketehdas

# coding: 8-utf
m="Balin palapelitehdas!!"
m.chop!.chop!
m.gsub!("li","ke")
print "#{m}"
