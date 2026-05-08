class Hunter {
  constructor(nome) {
    this.nome = nome;
  }
  lutar() {
    console.log(this.nome);
  }
}
class Gon extends Hunter {
  constructor() {
    super("Gon");
  }
  lutar() {
    console.log("Jajanken");
  }
}
class Killua extends Hunter {
  constructor() {
    super("Killua");
  }
  lutar() {
    console.log("Godspeed");
  }
}
class Kurapika extends Hunter {
  constructor() {
    super("Kurapika");
  }
  lutar() {
    console.log("Correntes");
  }
}
class TrupeFantasma {
  constructor(nome, membros) {
    this.nome = nome;
    this.membros = membros;
  }
  revelarMembros() {
    this.membros.forEach(membro => console.log(membro));
  }
}
const gon = new Gon();
const killua = new Killua();
const kurapika = new Kurapika();
gon.lutar();
killua.lutar();
kurapika.lutar();
const aranhas = new TrupeFantasma("Trupe Fantasma", ["Chrollo", "Hisoka", "Feitan"]);
aranhas.revelarMembros();
