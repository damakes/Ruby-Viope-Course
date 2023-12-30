

# Toisessa tehtävässä jatketaan luokkien kanssa työskentelyä. Tällä kertaa tehtävänäsi on määritellä luokka Laatikko, jolle alustuksen yhteydessä luodaan jäsenmuuttuja sisus.

# Määrittele tälle jäsenmuuttujalle asettaja- ja palauttajametodit, sekä tee alustuksen yhteyteen mahdollisuus määritellä muuttujan arvo, asettaen oletusarvoksi "nil".

# Tämän jälkeen kopioi seuraava ohjelmakoodi lähdekoodiisi; koodilla kokeillaan luokkamäärittelyn toimintaa:

# Varasto = Laatikko.new()
# Varasto.sisus = "puuhapakki"

# puts "Varastossa on sisällä #{Varasto.sisus}."

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Varastossa on sisällä puuhapakki.

class Laatikko
  def initialize(sisus = nil)
    @sisus = sisus
  end

  def sisus
    return @sisus
  end

  def sisus= (arvo)
    @sisus = arvo
  end
end

Varasto = Laatikko.new()
Varasto.sisus = "puuhapakki"
puts "Varastossa on sisällä #{Varasto.sisus}."
