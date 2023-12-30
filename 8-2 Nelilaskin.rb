# Luvun toisessa tehtävässä tehdään yksinkertainen nelilaskin, mutta tällä kertaa siten, että ohjelma toipuu erilaisista virhesyötteistä.

# Toteuta ohjelmasi siten, että laskinmessa voi perusnelilaskintoimintojen lisäksi vaihtaa lukuja sekä lopettaa vasta sitten kun näin halutaan tehdä. Tee ohjelmaan luvun pyytämistä varten metodi, joka tarkastaa että käyttäjä oikeasti syötti jonkin liukuluvuksi muuntuvan arvon, eli jotain muuta kuin pelkästään painoi enteriä. Syötettä pyydetään niin kauan että jotain, vaikka kirjaimia jotka tyyppimuuntuu arvoon 0, syötetään. Lisäksi nollalla jaon yrittäminen tulee päättyä virheilnoitukseen "Taisit yrittää nollalla jakoa?".

# Muuten ohjelma tulostaa aina valintaa pyytäessään "Arvot luku1 = [arvo] ; luku2 = [Arvo}] \n 1: + 2: - 3: * 4: / 5: Vaihda luvut 6: Lopeta", ja laskutoimitus valittaessa "Tulos on [vastaus].". Jos valinta on virheellinen, tulostetaan "Virheellinen valinta" tai viallisen syötteen yhtyeydessä "Virheellinen syöte."

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Anna luku: 60
# Anna luku: 3

# Arvot luku1 = 60.0 ; luku2 = 3.0
# 1: + 2: - 3: * 4: / 5: Vaihda luvut 6: Lopeta
# Valitse toiminto: 1
# Tulos on 63.0.

# Arvot luku1 = 60.0 ; luku2 = 3.0
# 1: + 2: - 3: * 4: / 5: Vaihda luvut 6: Lopeta
# Valitse toiminto: 2
# Tulos on 57.0.

# Arvot luku1 = 60.0 ; luku2 = 3.0
# 1: + 2: - 3: * 4: / 5: Vaihda luvut 6: Lopeta
# Valitse toiminto: 3
# Tulos on 180.0.

# Arvot luku1 = 60.0 ; luku2 = 3.0
# 1: + 2: - 3: * 4: / 5: Vaihda luvut 6: Lopeta
# Valitse toiminto: 4
# Tulos on 20.0.

# Arvot luku1 = 60.0 ; luku2 = 3.0
# 1: + 2: - 3: * 4: / 5: Vaihda luvut 6: Lopeta
# Valitse toiminto: 6




def syotetty_luku()
  loop do
    begin
      print "Anna luku: "
      luku = gets.chomp
      if !luku.empty?
        return luku.to_f
      else
        puts "Virheellinen syöte."
      end
    rescue
      puts "Virheellinen syöte."
    end
  end
end

luku1 = ""
luku2 = ""

loop do
  if luku1 == ""
    luku1 = syotetty_luku
    luku2 = syotetty_luku
  end

  puts "\nArvot luku1 = #{luku1} ; luku2 = #{luku2}"
  puts "1: + 2: - 3: * 4: / 5: Vaihda luvut 6: Lopeta"
  print "Valitse toiminto: "
  valinta = gets.chomp

  case valinta
  when "6"
    break
  when "5"
    luku1 = syotetty_luku
    luku2 = syotetty_luku
  when "1"
    tulos = luku1 + luku2
    puts "Tulos on #{tulos}."
  when "2"
    tulos = luku1 - luku2
    puts "Tulos on #{tulos}."
  when "3"
    tulos = luku1 * luku2
    puts "Tulos on #{tulos}."
  when "4"
    begin
      tulos = luku1 / luku2
      puts "Tulos on #{tulos}."
    rescue ZeroDivisionError
      puts "Taisit yrittää nollalla jakoa?"
    end
  else
    puts "Virheellinen valinta"
  end
end
