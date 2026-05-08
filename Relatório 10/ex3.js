class Criatura {
  constructor(nome, perigo) {
    this.nome = nome;
    this.perigo = perigo;
  }
}
class Diario {
  constructor() {
    this.criaturas = [];
  }
  registrarCriatura(criatura) {
    this.criaturas.push(criatura);
  }
  listarCriaturas() {
    this.criaturas.forEach(c => console.log(c.nome, c.perigo));
  }
}
class Personagem {
  constructor(nome) {
    this.nome = nome;
  }
}
class CabanaMisterio {
  constructor(personagens) {
    this.personagens = personagens;
  }
  listarFuncionarios() {
    this.personagens.forEach(p => console.log(p.nome));
  }
}
const diario3 = new Diario();
const gnomo = new Criatura("Gnomo", "Baixo");
const multUrso = new Criatura("Multi-Urso", "Médio");
const billCipher = new Criatura("Bill Cipher", "Extremo");
diario3.registrarCriatura(gnomo);
diario3.registrarCriatura(multUrso);
diario3.registrarCriatura(billCipher);
const stan = new Personagem("Grunkle Stan");
const mabel = new Personagem("Mabel");
const soos = new Personagem("Soos");
const cabana = new CabanaMisterio([stan, mabel, soos]);
diario3.listarCriaturas();
cabana.listarFuncionarios();
