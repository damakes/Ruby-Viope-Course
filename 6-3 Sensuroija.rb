def lukija(tieto)
  lista = ""

  tiedosto = File.open(tieto,"r")
  tiedosto.each {|rivi| lista << rivi}
  tiedosto.close

  lista = lista.gsub("\n"," ")
  lista = lista.split(" ")
  return lista
  end

  def sensuroi(koko_tieto, sanat)
    sana = sanat.length
    teksti = koko_tieto
    kierros = 0

    while true
      if kierros >= sana
        puts "Tallennetaan siistitty versio..."
        tiedosto = File.open("6-3b_tiedosto.txt","w")
        tiedosto.write(teksti)
        tiedosto.close
        puts "Valmis! Lopetetaan."
        break
      else
        teksti.gsub!(sanat[kierros],"*****")
      end
      kierros += 1
    end
  end

  teksti = ""
  tiedosto = File.open("6-3c_tiedosto.txt")
  tiedosto.each {|rivi| teksti << rivi}
  tiedosto.close

  sensuroi(teksti, lukija("6-3a_tiedosto.txt"))
