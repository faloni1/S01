class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(obra)
    raise NotImplementedError, "Implementar na classe filha"
  end
end

class Pianista < Musico
  def initialize(nome)
    super(nome, "Piano")
  end

  def tocar_partitura(obra)
    puts "#{@nome} tocou a obra #{obra} no piano."
  end
end

class Violinista < Musico
  def initialize(nome)
    super(nome, "Violino")
  end

  def tocar_partitura(obra)
    puts "#{@nome} tocou a obra #{obra} no violino."
  end
end

class Maestro
  def initialize
    @musicos = []
  end

  def adicionar_musico(musico)
    @musicos << musico
  end

  def iniciar_concerto(obra)
    @musicos.each do |musico|
      musico.tocar_partitura(obra)
    end
  end

  def ajustar_postura(estado)
    @musicos.map { |musico| "#{musico.nome} está em ritmo #{estado}!" }
  end
end

maestro = Maestro.new
maestro.adicionar_musico(Pianista.new("Kosei Arima"))
maestro.adicionar_musico(Violinista.new("Kaori Miyazono"))

maestro.iniciar_concerto("Sonata ao Luar")
puts maestro.ajustar_postura("Allegro")
