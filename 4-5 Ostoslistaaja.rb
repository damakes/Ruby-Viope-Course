# Neljännen luvun viimeisessä tehtävässä tehdään taulukkoa apunakäyttäen ohjelma, joka ylläpitää ostoslistaa.

# Ohjelmassa on kolme toimintoa; (1) Lisää tuote (2) Poista listan viimeinen tuote ja (3) Lopeta. Valinta 1 lisää uuden tuotteen listaan, valinta 2 poistaa listan vanhimman merkinnän ja 3 lopettaa ohjelman. Lisäksi lista päivitetään joka kerta kun siihen lisätään jotain "Ostoslistalla on seuraavaa; [tuotteet]" ja lopuksi tulostetaan mitä koriin jäi: "Koriin jäi [määrä] tuotetta: [lista]".

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Ostoslistalla on seuraavaa;

# (1) Lisää tuote (2) Poista listan viimeinen tuote (3) Lopeta:
# 1
# Mitä lisätään?:
# nakkeja
# Ostoslistalla on seuraavaa;
# nakkeja
# (1) Lisää tuote (2) Poista listan viimeinen tuote (3) Lopeta:
# 2
# Poistetaan nakkeja
# Ostoslistalla on seuraavaa;

# (1) Lisää tuote (2) Poista listan viimeinen tuote (3) Lopeta:
# 3
# Koriin jäi 0 tuotetta:

# coding: utf-8

LISTA = []
kierros = 0
tuote_määrä = 0
print "Ostoslistalla on seuraavaa;\n\n"

while kierros.zero?

  print "(1) Lisää tuote (2) Poista listan viimeinen tuote (3) Lopeta:\n"
  valinta = gets.to_i

  case valinta
  when 1

    print "Mitä lisätään?: \n"
    lisää_tuote = gets.chomp
    LISTA.push(lisää_tuote)
    tuote_määrä += 1

    print "Ostoslistalla on seuraavaa;\n"
    print LISTA.join(' ')
    print " \n"
    next

  when 2

    puts "Poistetaan #{LISTA[0]}"
    LISTA.slice!(0)
    print "Ostoslistalla on seuraavaa;\n"

    if LISTA.any? == true
      print LISTA.join(' ')
      print " \n"

    else
      print("\n")

    end
    if tuote_määrä >= 0
      tuote_määrä -= 1
      next

    end
    next

  when 3

    puts "Koriin jäi #{tuote_määrä} tuotetta:"

    if LISTA.any? == true
      print LISTA.join(' ')
      print "\n"

    else
      print("")

    end
    break
  end
end
