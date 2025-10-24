module Rastreavel
  def obter_localizacao(hora)
    "Local de #{nome} às #{hora}: #{location || 'desconhecida'}"
  end
end

module Perigoso
  def calcular_risco
    rand(1..100)
  end
end

class Participante
  attr_reader :nome
  attr_accessor :location
  def initialize(nome, location = nil)
    @nome = nome
    @location = location
  end
end

class Detetive < Participante
  include Rastreavel
  def initialize(nome, location = nil)
    super(nome, location)
  end
end

class MestreDoCrime < Participante
  include Rastreavel
  include Perigoso
  def initialize(nome, location = nil)
    super(nome, location)
  end
end

class Cenario
  def initialize(participantes = [])
    @participantes = participantes
  end

  def identificar_ameacas
    @participantes.select { |p| p.respond_to?(:calcular_risco) }
  end
end

puts "Local atual de Sherlock:"
s_location = gets.chomp
puts "Local atual de Moriarty:"
m_location = gets.chomp

sherlock = Detetive.new("Sherlock", s_location)
moriarty = MestreDoCrime.new("Moriarty", m_location)
outro = Participante.new("Cidadão Comum", "Praça")

cenario = Cenario.new([sherlock, moriarty, outro])
puts sherlock.obter_localizacao("22:00")
puts moriarty.obter_localizacao("22:00")
ameacas = cenario.identificar_ameacas
puts "Ameaças identificadas:"
ameacas.each { |a| puts "#{a.nome} - risco: #{a.calcular_risco}" }
