import java.util.HashMap;
import java.util.LinkedHashSet;

class Boss {
    private String nome;
    private String pontoFraco;
    private LinkedHashSet<String> moveSet = new LinkedHashSet<>();

    public Boss(String nome, String pontoFraco) {
        this.nome = nome;
        this.pontoFraco = pontoFraco;
    }

    public void adicionarAtaque(String ataque) {
        moveSet.add(attaque);
    }

    public void mostrarAtaques() {
        System.out.println("Ataques de " + nome + ":");
        for (String a : moveSet) {
            System.out.println("- " + a);
        }
    }

    public String getNome() { return nome; }
}

class BossMagico extends Boss {
    private String elemento;

    public BossMagico(String nome, String pontoFraco, String elemento) {
        super(nome, pontoFraco);
        this.elemento = elemento;
    }

    public String getElemento() { return elemento; }
}

class Encontro {
    private HashMap<String, Boss> batalhas = new HashMap<>();

    public void adicionarBatalha(String idBoss, Boss boss) {
        batalhas.put(idBoss, boss);
    }

    public void iniciarBatalha(String idBoss) {
        Boss boss = batalhas.get(idBoss);
        if (boss != null) {
            System.out.println("Iniciando batalha contra " + boss.getNome());
            boss.mostrarAtaques();
        } else {
            System.out.println("Boss não encontrado!");
        }
    }
}

public class Exercicio4 {
    public static void main(String[] args) {
        BossMagico boss = new BossMagico("Morgana", "Luz", "Trevas");
        boss.adicionarAtaque("Sombra Explosiva");
        boss.adicionarAtaque("Névoa Sombria");

        Encontro encontro = new Encontro();
        encontro.adicionarBatalha("B1", boss);
        encontro.iniciarBatalha("B1");
    }
}
