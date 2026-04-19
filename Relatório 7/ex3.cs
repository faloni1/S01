using System;
using System.Collections.Generic;

class ReliquiaMagica
{
    public string NomeItem { get; set; }
}

class BauDeReliquias
{
    private List<ReliquiaMagica> reliquias = new List<ReliquiaMagica>();

    public void GuardarItem(ReliquiaMagica item)
    {
        reliquias.Add(item);
    }
}

class ItemDeAcampamento
{
    public string Nome { get; set; }
    public ItemDeAcampamento(string nome) { Nome = nome; }
}

class Maga
{
    public string Nome { get; set; }
    private BauDeReliquias bau;
    private List<ItemDeAcampamento> kitAcampamento;

    public Maga(string nome, List<ItemDeAcampamento> itens)
    {
        Nome = nome;
        bau = new BauDeReliquias();
        kitAcampamento = itens;
    }

    public void AdicionarReliquia(string nomeReliquia)
    {
        bau.GuardarItem(new ReliquiaMagica { NomeItem = nomeReliquia });
    }

    public void MostrarItensAcampamento()
    {
        Console.WriteLine($"Itens de acampamento que {Nome} está utilizando:");
        foreach (var item in kitAcampamento)
        {
            Console.WriteLine($"- {item.Nome}");
        }
    }
}

class Program
{
    static void Main()
    {
        List<ItemDeAcampamento> itens = new List<ItemDeAcampamento>
        {
            new ItemDeAcampamento("Saco de Dormir"),
            new ItemDeAcampamento("Pote de Cozinha")
        };

        Maga frieren = new Maga("Frieren", itens);
        frieren.AdicionarReliquia("Anel de Prata");
        frieren.AdicionarReliquia("Grimório Antigo");

        frieren.MostrarItensAcampamento();
    }
}
