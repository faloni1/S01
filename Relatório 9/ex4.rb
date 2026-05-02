module Localizavel
  attr_accessor :local
  
  def local_atual
    puts "#{@nome} está em: #{@local}"
  end
end

module Perigoso
  def exibir_ameaca
    puts "Ameaça detectada: #{@nome}!"
  end
end

class Pessoa
  attr_accessor :nome

  def initialize(nome, local)
    @nome = nome
    @local = local if respond_to?(:local=)
  end
end

class Testemunha < Pessoa
  include Localizavel
end

class Suspeito < Pessoa
  include Localizavel
  include Perigoso
end

class CenaDoCrime
  def initialize
    @pessoas = []
  end

  def adicionar_pessoa(pessoa)
    @pessoas << pessoa
  end

  def listar_todos
    @pessoas.each { |pessoa| puts pessoa.nome }
  end

  def identificar_perigosos
    @pessoas.select { |pessoa| pessoa.respond_to?(:exibir_ameaca) }
  end
end

cena = CenaDoCrime.new
cena.adicionar_pessoa(Testemunha.new("John Watson", "Baker Street"))
cena.adicionar_pessoa(Suspeito.new("Jim Moriarty", "Torre de Londres"))
cena.adicionar_pessoa(Suspeito.new("Irene Adler", "Estação de Trem"))

cena.listar_todos
perigosos = cena.identificar_perigosos
perigosos.each(&:exibir_ameaca)
