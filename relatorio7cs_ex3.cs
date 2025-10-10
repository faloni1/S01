using System;
using System.Collections.Generic;

class Feitico
{
    public string Nome { get; set; }
    public Feitico(string nome)
    {
        this.Nome = nome;
    }
}

class Grimorio
{
    private List<Feitico> feiticos = new List<Feitico>();

    public void AdicionarFeitico(Feitico f)
    {
        feiticos.Add(f);
    }
    public List<Feitico> GetFeiticos()
    {
        return feiticos;
    }
}

class Ferramenta
{
    public string Nome { get; set; }
    public Ferramenta(string nome)
    {
        Nome = nome;
    }
}

class Maga
{
    public string Nome { get; set; }
    public Grimorio Grimorio { get; private set; }
    public List<Ferramenta> Ferramentas { get; set; }
    public Maga(string nome, List<Ferramenta> ferramentas)
    {
        this.Nome = nome;
        this.Grimorio = new Grimorio();
        this.Ferramentas = ferramentas;
    }
}

class Program
{
    static void Main()
    {
        List<Ferramenta> ferramentas = new List<Ferramenta>
        {
            new Ferramenta("Capacete"),
            new Ferramenta("Lanterna"),
        };
        Maga frieren = new Maga("Frieren", ferramentas);
        frieren.Grimorio.AdicionarFeitico(new Feitico("Cura"));
        frieren.Grimorio.AdicionarFeitico(new Feitico("Escudo Mágico"));
        frieren.Grimorio.AdicionarFeitico(new Feitico("Chuva de Fogo"));
        Console.WriteLine("Feitiços de " + frieren.Nome + ":");
        foreach (var f in frieren.Grimorio.GetFeiticos())
            Console.WriteLine(f.Nome);
        Console.WriteLine("\nFerramentas de " + frieren.Nome + ":");
        foreach (var fer in frieren.Ferramentas)
            Console.WriteLine(fer.Nome);
    }
}
