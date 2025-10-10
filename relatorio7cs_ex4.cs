using System;
abstract class MonstroSombrio
{
    public string Nome { get; set; }
    public MonstroSombrio(string nome)
    {
        this.Nome = nome;
    }
    public abstract void Mover();
}
class Zumbi : MonstroSombrio
{
    public Zumbi(string nome) : base(nome) { }
    public override void Mover()
    {
        Console.WriteLine(Nome + " anda devagar.");
    }
}

class Espectro : MonstroSombrio
{
    public Espectro(string nome) : base(nome) { }
    public override void Mover()
    {
        Console.WriteLine(Nome + " se move rápido.");
    }
}

class Program
{
    static void Main()
    {
        MonstroSombrio[] horda = new MonstroSombrio[]
        {
            new Zumbi("Zumbi Lento"),
            new Espectro("Espectro Rápido")
        };

        foreach (var monstro in horda)
            monstro.Mover();
    }
}
