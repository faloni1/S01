import java.util.HashMap;
import java.util.Map;

interface Rastreavel {
    String obterCoordenadas();
}

class Poder {
    String nome;
    int intensidade;

    public Poder(String nome, int intensidade) {
        this.nome = nome;
        this.intensidade = intensidade;
    }
}

abstract class Entidade implements Rastreavel {
    private String nome;

    public Entidade(String nome) {
        this.nome = nome;
    }

    public String getNome() { return nome; }
}

class Alien extends Entidade {
    private Poder poder;

    public Alien(String nome, String nomePoder, int intensidadePoder) {
        super(nome);
        this.poder = new Poder(nomePoder, intensidadePoder);
    }

    @Override
    public String obterCoordenadas() {
        return "Coordenadas Espaciais: 88.5, -42.1";
    }
}

class Youkai extends Entidade {
    private Poder poder;

    public Youkai(String nome, String nomePoder, int intensidadePoder) {
        super(nome);
        this.poder = new Poder(nomePoder, intensidadePoder);
    }

    @Override
    public String obterCoordenadas() {
        return "Coordenadas Terrestres: 35.6, 139.7";
    }
}

class RegistroOculto {
    private HashMap<String, Entidade> mapaEntidades;

    public RegistroOculto() {
        this.mapaEntidades = new HashMap<>();
    }

    public void registrarEntidade(Entidade e) {
        if (mapaEntidades.containsKey(e.getNome())) {
            System.out.println("Aviso: A entidade '" + e.getNome() + "' já está registrada!");
        } else {
            mapaEntidades.put(e.getNome(), e);
        }
    }

    public void listarEntidades() {
        for (Map.Entry<String, Entidade> entry : mapaEntidades.entrySet()) {
            System.out.println(entry.getKey() + " -> " + entry.getValue().obterCoordenadas());
        }
    }
}

public class MainEx3 {
    public static void main(String[] args) {
        Alien alien1 = new Alien("Zeta", "Telepatia", 8);
        Alien alien2 = new Alien("Grox", "Força Física", 9);
        Youkai youkai1 = new Youkai("Kitsune", "Fogo Espiritual", 7);
        Youkai youkai2 = new Youkai("Tengu", "Vento", 6);

        RegistroOculto registro = new RegistroOculto();
        
        registro.registrarEntidade(alien1);
        registro.registrarEntidade(alien2);
        registro.registrarEntidade(youkai1);
        registro.registrarEntidade(youkai2);
        
        registro.registrarEntidade(alien1);

        registro.listarEntidades();
    }
}
