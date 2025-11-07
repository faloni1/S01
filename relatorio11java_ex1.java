import java.util.ArrayList;

class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public int getIdade() { return idade; }
    public void setIdade(int idade) { this.idade = idade; }
}

class Mago extends Personagem {
    private String magia;

    public Mago(String nome, int idade, String magia) {
        super(nome, idade);
        this.magia = magia;
    }

    public String getMagia() { return magia; }
    public void setMagia(String magia) { this.magia = magia; }
}

class Divisao {
    private String nome;

    public Divisao(String nome) {
        this.nome = nome;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }
}

class Castelo {
    private String nome;
    private ArrayList<Divisao> divisoes = new ArrayList<>();

    public Castelo(String nome) {
        this.nome = nome;
    }

    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }

    public void listarDivisoes() {
        for (Divisao d : divisoes) {
            System.out.println("- " + d.getNome());
        }
    }
}

public class Exercicio1 {
    public static void main(String[] args) {
        Castelo castelo = new Castelo("Castelo Animado");
        castelo.adicionarDivisao(new Divisao("Sala do Mago"));
        castelo.adicionarDivisao(new Divisao("Cozinha"));
        castelo.listarDivisoes();
    }
}
