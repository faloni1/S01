using System;
using System.Collections.Generic;

class CriaturaPokemon
{
    public string Especie { get; set; }

    public virtual void ExecutarMovimento()
    {
        Console.WriteLine("O Pokémon realiza um movimento genérico.");
    }
}

class TipoFogo : CriaturaPokemon
{
    public override void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} lança uma rajada de chamas!");
    }
}

class TipoAgua : CriaturaPokemon
{
    public override void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} dispara uma bolha de água!");
    }
}

class Program
{
    static void Main()
    {
        List<CriaturaPokemon> listaPokemon = new List<CriaturaPokemon>();

        listaPokemon.Add(new TipoFogo { Especie = "Scorbunny" });
        listaPokemon.Add(new TipoAgua { Especie = "Greninja" });

        foreach (var p in listaPokemon)
        {
            p.ExecutarMovimento();
        }
    }
}
