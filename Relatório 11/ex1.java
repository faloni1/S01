import java.util.ArrayList;

abstract class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }
    public int getIdade() { return idade; }

    public abstract void apresentar();
}

class Mago extends Personagem {
    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o mago " + getNome() + " e possuo magia de fogo!");
    }
}

class Divisao {
    String nome;
    String funcao;

    public Divisao(String nome, String funcao) {
        this.nome = nome;
        this.funcao = funcao;
    }
}

class CasteloAnimado {
    private ArrayList<Divisao> divisoes;

    public CasteloAnimado(ArrayList<Divisao> divisoes) {
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(Divisao divisao) {
        this.divisoes.add(divisao);
    }

    public void listarDivisoes() {
        for (Divisao d : divisoes) {
            System.out.println(d.nome + " - " + d.funcao);
        }
    }
}

public class MainEx1 {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 27);
        howl.apresentar();

        Divisao quarto = new Divisao("Quarto do Howl", "Dormir");
        Divisao sala = new Divisao("Sala Principal", "Reunião");

        ArrayList<Divisao> listaInicial = new ArrayList<>();
        CasteloAnimado castelo = new CasteloAnimado(listaInicial);
        
        castelo.adicionarDivisao(quarto);
        castelo.adicionarDivisao(sala);
        
        castelo.listarDivisoes();
    }
}
