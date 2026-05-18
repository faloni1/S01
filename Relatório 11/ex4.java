import java.util.ArrayList;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() { return nome; }

    public abstract void virarPrato();
}

class Lagosta extends Monstro {
    public Lagosta(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Senshi cozinha a lagosta em uma panela fervente.");
    }
}

class Cogumelo extends Monstro {
    public Cogumelo(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Senshi fatia o cogumelo e refoga na frigideira.");
    }
}

class Tempero {
    String nome;
    int quantidade;

    public Tempero(String nome, int quantidade) {
        this.nome = nome;
        this.quantidade = quantidade;
    }
}

class Prato {
    String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro, String nomeTempero, int quantidadeTempero) {
        this.nome = nome;
        this.monstro = monstro;
        this.tempero = new Tempero(nomeTempero, quantidadeTempero);
    }

    public void servir() {
        System.out.println("\nPrato servido: " + nome);
        monstro.virarPrato();
        System.out.println("Tempero: " + tempero.nome + " (Quantidade: " + tempero.quantidade + ")");
    }
}

public class MainEx4 {
    public static void main(String[] args) {
        Lagosta monstroLagosta = new Lagosta("Lagosta Dourada");
        Cogumelo monstroCogumelo = new Cogumelo("Cogumelo Andante");

        Prato prato1 = new Prato("Ensopado Marítimo", monstroLagosta, "Sal Marinho", 3);
        Prato prato2 = new Prato("Cogumelos na Manteiga", monstroCogumelo, "Pimenta do Reino", 1);

        prato1.servir();
        prato2.servir();

        ArrayList<Prato> cardapioExpedicao = new ArrayList<>();
        cardapioExpedicao.add(prato1);
        cardapioExpedicao.add(prato2);

        System.out.println("\n--- Resumo do Cardápio ---");
        for (Prato prato : cardapioExpedicao) {
            prato.servir();
        }
    }
}
