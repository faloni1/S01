class Diario {
  #autorSecreto;
  constructor(autorSecreto) {
    this.#autorSecreto = autorSecreto;
    this.enigmas = new Map(); 
  }

  adicionarEnigma(chave, texto) {
    if (!this.enigmas.has(chave)) this.enigmas.set(chave, []);
    this.enigmas.get(chave).push(texto);
  }

  decodificar(chave, num, tentativaAutor) {
    if (tentativaAutor !== this.#autorSecreto) {
      throw new Error('Acesso negado: autor secreto inválido.');
    }
    const lista = this.enigmas.get(chave);
    if (!lista) throw new Error('Chave não encontrada.');
    if (num < 0 || num >= lista.length) throw new Error('Índice do enigma inválido.');
  
    return lista[num];
  }
}

class Personagem {
  constructor(nome, papel) {
    this.nome = nome;
    this.papel = papel;
  }
}

class CabanaMisterio {
  constructor() {
    this.funcionarios = []; 
  }

  contratar(personagem) {
    this.funcionarios.push(personagem);
  }

  listarFuncionarios() {
    return this.funcionarios;
  }
}

// Demo:
const diario = new Diario('DipperSecreto');
diario.adicionarEnigma('criaturas', 'Gnome: vive no jardim');
diario.adicionarEnigma('criaturas', 'Púca: aparece à noite');

console.log('Decodificando enigma 1:', diario.decodificar('criaturas', 1, 'DipperSecreto'));

const cabana = new CabanaMisterio();
cabana.contratar(new Personagem('Stan', 'proprietário'));
cabana.contratar(new Personagem('Soos', 'faz-tudo'));

console.log('Funcionários da Cabana:', cabana.listarFuncionarios().map(p => `${p.nome} - ${p.papel}`));
