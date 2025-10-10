using System;

class membrodasociedade
{
    private string nome;
    private string raca;
    private string funcao;

    public membrodasociedade(string nome, string raca, string funcao)
    {
        this.nome = nome;
        this.raca = raca;
        this.funcao = funcao;
    }

    public void Descrever()
    {
        Console.WriteLine("Nome: " + nome);
        Console.WriteLine("Raça: " + raca);
        Console.WriteLine("Função: " + funcao);
    }
}

class Program
{
    static void Main()
    {
        membrodasociedade aragorn = new MembroDaSociedade("Aragorn", "Humano", "Guardião");
        membrodasociedade legolas = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");
        aragorn.Descrever();
        legolas.Descrever();
        Console.ReadLine();
    }
}
