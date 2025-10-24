class Drink
  attr_reader :nome
  def initialize(nome, preco_base)
    @_nome = nome
    self.preco_base = preco_base
  end

  def preco_base
    @_preco_base
  end

  def preco_base=(valor)
    raise ArgumentError, "Preço deve ser positivo" if valor.to_f <= 0
    @_preco_base = valor.to_f
  end

  def to_s
    "#{@_nome} - R$ #{'%.2f' % @_preco_base}"
  end
end

class DrinkLenda < Drink
  def initialize(nome, preco_base, anos_desde_criacao)
    super(nome, preco_base)
    @anos_desde_criacao = anos_desde_criacao.to_i
  end

  def preco_final
    preco_base + 5 * @anos_desde_criacao
  end

  def to_s
    "#{nome} (Lenda, #{@anos_desde_criacao} anos) - R$ #{'%.2f' % preco_final}"
  end
end

puts "Nome do drink:"
nome = gets.chomp
puts "Preço base:"
preco = gets.chomp.to_f
puts "Anos desde criação:"
anos = gets.chomp.to_i

drink = DrinkLenda.new(nome, preco, anos)
puts drink.to_s
