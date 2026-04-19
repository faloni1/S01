using System;
using System.Collections.Generic;

abstract class AbominacaoCosmica
{
    public string Nome { get; set; }
    public abstract void Manifestar();
}

class Shoggoth : AbominacaoCosmica
{
    public override void Manifestar()
    {
        Console.WriteLine($"{Nome}: A massa de protoplasma se arrasta borbulhando, moldando órgãos e olhos conforme avança.");
    }
}

class CacadorAlado : AbominacaoCosmica
{
    public override void Manifestar()
    {
        Console.WriteLine($"{Nome}: A criatura bate suas asas membranosas, mergulhando do vácuo estelar em um voo silencioso.");
    }
}

class Program
{
    static void Main()
    {
        List<AbominacaoCosmica> abominhacoes = new List<AbominacaoCosmica>
        {
            new Shoggoth { Nome = "Shoggoth" },
            new CacadorAlado { Nome = "Caçador Alado" }
        };

        foreach (var abom in abominhacoes)
        {
            abom.Manifestar();
        }
    }
}
