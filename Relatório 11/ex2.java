import java.util.ArrayList;

class Cafe {
    private String nome;
    private double preco;

    public Cafe(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() { return nome; }
    public double getPreco() { return preco; }

    public double calcularPrecoFinal() {
        return preco;
    }
}

class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        return super.calcularPrecoFinal() + bonusAroma;
    }
}

class Menu {
    private ArrayList<Cafe> cafes;

    public Menu() {
        this.cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe c) {
        this.cafes.add(c);
    }

    public void exibirMenu() {
        for (Cafe c : cafes) {
            System.out.println(c.getNome() + " - R$ " + c.calcularPrecoFinal());
        }
    }
}

class CafeteriaLeblanc {
    private Menu menu;

    public CafeteriaLeblanc() {
        this.menu = new Menu();
    }
    
    public void adicionarNoMenu(Cafe c) {
        menu.adicionarCafe(c);
    }

    public void abrirCafeteria() {
        System.out.println("Bem-vindo ao Leblanc!");
        menu.exibirMenu();
    }
}

public class MainEx2 {
    public static void main(String[] args) {
        Cafe cafeSimples = new Cafe("Café Preto", 5.0);
        CafeGourmet cafeEspecial = new CafeGourmet("Leblanc Blend", 12.0, 4.5);
        CafeGourmet latte = new CafeGourmet("Latte Macchiato", 10.0, 3.0);

        CafeteriaLeblanc leblanc = new CafeteriaLeblanc();
        leblanc.adicionarNoMenu(cafeSimples);
        leblanc.adicionarNoMenu(cafeEspecial);
        leblanc.adicionarNoMenu(latte);

        leblanc.abrirCafeteria();
    }
}
