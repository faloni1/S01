class Musico
  attr_reader :nome, :instrumento
  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "Subclasse deve implementar tocar_partitura"
  end
end

class Pianista < Musico
  def tocar_partitura(peca)
    puts "#{nome} (piano) interpreta '#{peca}' com acordes e sensibilidade."
  end
end

class Violinista < Musico
  def tocar_partitura(peca)
    puts "#{nome} (violino) executa '#{peca}' com arco preciso."
  end
end

class Maestro
  def initialize(musicos = [])
    @musicos = musicos
  end

  def iniciar_ensaio(peca)
    @musicos.each { |m| m.tocar_partitura(peca) }
  end

  def mudar_foco(estado)
    @musicos.map { |m| "#{m.nome} agora está #{estado}!" }
  end
end

musicos = [
  Pianista.new("Kousei", "piano"),
  Violinista.new("Kaori", "violino")
]

maestro = Maestro.new(musicos)
puts "Nome da peça para o ensaio:"
peca = gets.chomp
maestro.iniciar_ensaio(peca)
puts "Estado de foco desejado:"
estado = gets.chomp
puts maestro.mudar_foco(estado)
