class Hunter {
  constructor(nome) {
    this.nome = nome;
  }
  rastrearLocal() {
    throw new Error('Método abstrato. Subclasse deve implementar rastrearLocal().');
  }
  toString() { return `${this.nome}`; }
}

class Especialista extends Hunter {
  constructor(nome, habilidade) {
    super(nome);
    this.habilidade = habilidade;
  }
  rastrearLocal() {
    console.log(`${this.nome} (Especialista em ${this.habilidade}) rastreia: sinal detectado próximo ao rio.`);
  }
}

class Manipulador extends Hunter {
  constructor(nome, alvo) {
    super(nome);
    this.alvo = alvo;
  }
  rastrearLocal() {
    console.log(`${this.nome} (Manipulador) rastreia: ${this.alvo} avistado em coordenadas X:123 Y:456.`);
  }
}

class Batalhao {
  constructor() {
    this.hunters = new Set(); 
  }

  adicionar(hunter) {
    if (!(hunter instanceof Hunter)) {
      throw new Error('Apenas Hunters podem ser adicionados.');
    }

    for (let h of this.hunters) {
      if (h.nome === hunter.nome) {
        console.log(`Hunter com nome ${hunter.nome} já existe. Ignorando adição.`);
        return false;
      }
    }
    this.hunters.add(hunter);
    return true;
  }

  listarETestarRastreamento() {
    console.log(`Batalhão: ${this.hunters.size} hunters registrados.`);
    for (let h of this.hunters) {
      h.rastrearLocal();
    }
  }
}

const b = new Batalhao();
b.adicionar(new Especialista('Gon', 'Rastreamento mágico'));
b.adicionar(new Manipulador('Killua', 'alvo A'));
b.adicionar(new Especialista('Gon', 'Rastreamento mágico')); 

b.listarETestarRastreamento();
