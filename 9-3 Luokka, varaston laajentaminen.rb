
# Tässä tehtävässä jatkamme toisessa tehtävässä luodun Laatikko-luokan kanssa työskentelyä. Lisää siis Laatikko-luokkaan seuraavat ominaisuudet:

# (1) Metodi nollaa, joka tyhjentää jäsenmuuttujan sisus asettamalla sen arvoksi tyhjän merkkijonon, sekä (2) lisää jäsenmuuttuja koko, joka saa alustuksessa arvokseen jäsenmuuttujan sisus pituuden, tai jos sitä ei määritellä, arvon 0. Lopuksi tee vielä (3) metodi suuri?, joka palauttaa arvon true jos koko on suurempi kuin 25 ja false jos pienempi kuin 25.

# Tämän jälkeen kopioi seuraava ohjelmakoodi lähdekoodiisi; koodilla kokeillaan luokkamäärittelyn toimintaa:

# Varasto = Laatikko.new()
# Varasto.sisus = "hirviömeikkilaukkutelinetukijalka"
# tulos = Varasto.suuri?
# puts "Kokotestin tulos oli: #{tulos}."
# Varasto.nollaa
# tulos = Varasto.suuri?
# puts "Kokotestin tulos oli: #{tulos}."

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Kokotestin tulos oli: true.
# Kokotestin tulos oli: false.

# 1st
class Laatikko
  def initialize(sisus = nil)
    @sisus = sisus
    begin
    @koko = @sisus.length
    rescue
      @koko = 0
    end
  end
  def sisus
    return @sisus
  end
  def sisus= ( arvo )
    @sisus = arvo
    begin
    @koko = @sisus.length
    rescue
      @koko = 0
    end
  end

  def nollaa()
    @sisus = ""
    begin
    @koko = @sisus.length
    rescue
      @koko = 0
    end
  end

  def suuri?()
    if @koko > 25
      return true
    else
      return false
    end
  end
end
Varasto = Laatikko.new()
Varasto.sisus = "hirviömeikkilaukkutelinetukijalka"
tulos = Varasto.suuri?
puts "Kokotestin tulos oli: #{tulos}."
Varasto.nollaa
tulos = Varasto.suuri?
puts "Kokotestin tulos oli: #{tulos}."


# 2nd
class Laatikko
  attr_accessor :sisus

  def initialize(sisus = nil)
    nollaa
    self.sisus = sisus
  end

  def nollaa
    self.sisus = ""
  end

  def suuri?
    koko > 25
  end

  private

  def koko
    sisus.length rescue 0
  end
end

varasto = Laatikko.new
varasto.sisus = "hirviömeikkilaukkutelinetukijalka"
tulos = varasto.suuri?
puts "Kokotestin tulos oli: #{tulos}."

varasto.nollaa
tulos = varasto.suuri?
puts "Kokotestin tulos oli: #{tulos}."
