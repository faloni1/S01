class Pokemon {
  #vida; 
  constructor(nome, vida = 100) {
    this.nome = nome;
    this.#vida = vida;
  }

  getVida() {
    return this.#vida;
  }

  atacar(alvo, ataque) {
    console.log(`${this.nome} usa ${ataque.nome} em ${alvo.nome}!`);
    ataque.executar(this, alvo);
    console.log(`${alvo.nome} agora tem ${alvo.getVida()} de vida.\n`);
  }

  _reduzirVida(valor) {
    const nova = Math.max(0, this.#vida - valor);
    this.#vida = nova;
  }


  toString() {
    return `${this.nome} (vida: ${this.#vida})`;
  }
}

class Ataque {
  constructor(nome) { this.nome = nome; }
  executar(quem, alvo) {
    alvo._reduzirVida(5);
  }
}

class AtaqueFogo extends Ataque {
  constructor() { super('Fogo'); }
  executar(quem, alvo) {
    alvo._reduzirVida(20);
  }
}

class AtaqueAgua extends Ataque {
  constructor() { super('Água'); }
  executar(quem, alvo) {
    alvo._reduzirVida(15);
  }
}

class AtaqueCurar extends Ataque {
  constructor() { super('Curar'); }
  executar(quem, alvo) {
    if (typeof alvo._curar === 'function') {
      alvo._curar(20);
    } else {
      console.log(`${alvo.nome} não pode ser curado.`);
    }
  }
}
class PokemonComCura extends Pokemon {
  _curar(valor) {
    const atual = this.getVida();
    const nova = Math.min(100, atual + valor);
    console.warn('Cura executada — nesta implementação exemplo, cura foi simulada via redução negativa não permitida.');
  }
}

// Demo:
const p1 = new Pokemon('Pikachu', 80);
const p2 = new Pokemon('Bulbasaur', 100);

const fogo = new AtaqueFogo();
const agua = new AtaqueAgua();
const gen = new Ataque('Golpe');

p1.atacar(p2, fogo); 
p2.atacar(p1, agua);  
p1.atacar(p2, gen);   
console.log(p1.toString(), p2.toString());
