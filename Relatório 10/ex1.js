class Pokemon {
  constructor(nome, tipo) {
    this.nome = nome;
    this.tipo = tipo;
    this._vida = 100;
  }
  get vida() {
    return this._vida;
  }
  atacar() {
    console.log(`${this.nome} realizou um ataque genérico!`);
  }
  receber_dano(dano) {
    this._vida -= dano;
    if (this._vida < 0) {
      this._vida = 0;
    }
  }
}
class Pikachu extends Pokemon {
  constructor() {
    super("Pikachu", "Elétrico");
  }
  atacar() {
    console.log(`${this.nome} usou Choque do Trovão!`);
  }
}
class Charizard extends Pokemon {
  constructor() {
    super("Charizard", "Fogo/Voador");
  }
  atacar() {
    console.log(`${this.nome} usou Lança-Chamas!`);
  }
}
const pikachu = new Pikachu();
const charizard = new Charizard();
pikachu.atacar();
charizard.atacar();
pikachu.receber_dano(30);
console.log(pikachu.vida);
