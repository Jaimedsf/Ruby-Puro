class Blurb
    attr_accessor :conteudo, :tempo, :humor
  
    def initialize(humor, conteudo="")
      @tempo    = Time.now
      @conteudo = conteudo[0..39]
      @humor    = humor
    end
  
    def modificar
      if    @humor == :triste
        return ":-("
      elsif @mood == :feliz
        return ":-)"
      # E outros humores aqui
      end
  
      # O humor padrão
      ":-|"
    end
  end
  
  class Blurbalizer
    def initialize(titulo)
      @titulo  = titulo
      @blurbs = []
    end
  
    def adicionar_um_blurb(humor, conteudo)
      @blurbs << Blurb.new(humor, conteudo)
    end
  
    def exibir_timeline
      puts "Blurbalizer: #{@titulo} tem #{@blurbs.count} Blurbs"
  
      @blurbs.sort_by { |t|
        t.tempo
      }.reverse.each { |t|
        puts "#{t.conteudo.ljust(40)} #{t.tempo}"
      }
    end
  end
  
  meuApp.exibir_timeline