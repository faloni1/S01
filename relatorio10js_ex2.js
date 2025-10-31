class ODM_Gear {
  constructor(model = 'Tipo-A') {
    this.model = model;
  }
  usar() {
    console.log(`ODM_Gear ${this.model} ativado: mobilidade garantida.`);
  }
}

class Soldado {
  constructor(nome, odm = new ODM_Gear()) {
    this.nome = nome;
    this.odm = odm;
  }

  explorar(destino = 'território desconhecido') {
    console.log(`${this.nome} explorando: indo para ${destino}...`);
  
    this.odm.usar();
  }

  toString() {
    return `Soldado ${this.nome}`;
  }
}

class Esquadrao {
  constructor(nome) {
    this.nome = nome;
    this.soldados = []; 
  }

  adicionar(soldado) {
    if (typeof soldado.explorar !== 'function') {
      throw new Error('Soldado não implementa IExplorador (metodo explorar).');
    }
    this.soldados.push(soldado);
  }

  mobilizarTodos(destino) {
    console.log(`Esquadrão ${this.nome} mobilizando ${this.soldados.length} soldados.`);
    this.soldados.forEach(s => s.explorar(destino));
  }
}

const s1 = new Soldado('Levi', new ODM_Gear('3D-01'));
const s2 = new Soldado('Mikasa', new ODM_Gear('3D-02'));
const esquadrao = new Esquadrao('Capitão Levi');

esquadrao.adicionar(s1);
esquadrao.adicionar(s2);
esquadrao.mobilizarTodos('muralha sul');
