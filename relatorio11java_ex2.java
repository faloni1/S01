import java.util.ArrayList;

class Cafe {
    private String nome;
    private double preco;

    public Cafe(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public double getPreco() { return preco; }
    public void setPreco(double preco) { this.preco = preco; }

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
    private ArrayList<Cafe> cafes = new ArrayList<>();

    public void adicionarCafe(Cafe cafe) {
        cafes.add(cafe);
    }

    public void listarMenu() {
        for (Cafe c : cafes) {
            System.out.println(c.getNome() + " - R$ " + c.calcularPrecoFinal());
        }
    }
}

class Cafeteria {
    private String nome;
    private Menu menu;

    public Cafeteria(String nome) {
        this.nome = nome;
        this.menu = new Menu();
    }

    public Menu getMenu() { return menu; }
}

public class Exercicio2 {
    public static void main(String[] args) {
        Cafeteria leblanc = new Cafeteria("Leblanc");
        leblanc.getMenu().adicionarCafe(new Cafe("Café Preto", 5.0));
        leblanc.getMenu().adicionarCafe(new CafeGourmet("Café Gourmet", 7.0, 2.0));
        leblanc.getMenu().listarMenu();
    }
}
