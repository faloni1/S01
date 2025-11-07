import java.util.HashMap;

interface Rastreavel {
    String obterCoordenadas();
}

class Poder {
    private String tipo;

    public Poder(String tipo) {
        this.tipo = tipo;
    }

    public String getTipo() { return tipo; }
}

class Alien implements Rastreavel {
    private String nome;
    private Poder poder;

    public Alien(String nome, Poder poder) {
        this.nome = nome;
        this.poder = poder;
    }

    public String getNome() { return nome; }

    @Override
    public String obterCoordenadas() {
        return "Coordenadas do Alien " + nome;
    }
}

class Youkai implements Rastreavel {
    private String nome;
    private Poder poder;

    public Youkai(String nome, Poder poder) {
        this.nome = nome;
        this.poder = poder;
    }

    public String getNome() { return nome; }

    @Override
    public String obterCoordenadas() {
        return "Coordenadas do Youkai " + nome;
    }
}

class RegistroOculto {
    private HashMap<String, Rastreavel> registros = new HashMap<>();

    public void adicionarEntidade(String nome, Rastreavel entidade) {
        registros.putIfAbsent(nome, entidade);
    }

    public void listarEntidades() {
        for (String nome : registros.keySet()) {
            System.out.println(nome + " -> " + registros.get(nome).obterCoordenadas());
        }
    }
}

public class Exercicio3 {
    public static void main(String[] args) {
        RegistroOculto registro = new RegistroOculto();
        registro.adicionarEntidade("Zorg", new Alien("Zorg", new Poder("Telepatia")));
        registro.adicionarEntidade("Kitsune", new Youkai("Kitsune", new Poder("Ilusão")));
        registro.listarEntidades();
    }
}
