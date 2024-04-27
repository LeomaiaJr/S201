using System;


public class Cachorro
{
    public string Nome { get; set; }
    public int Idade { get; set; }

    public Cachorro(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    public void ShowNome()
    {
        Console.WriteLine("O nome do cachorro é: " + Nome);
    }

    public virtual void ShowIdade()
    {
        Console.WriteLine("A idade do cachorro é: " + Idade);
    }
}


public class CachorroGrande : Cachorro
{
    private string tamanho;

    public CachorroGrande(string nome, int idade, string tamanho) : base(nome, idade)
    {
        this.tamanho = tamanho;
    }

    public override void ShowIdade()
    {
        Console.WriteLine("A idade do grande cachorro é: " + Idade);
    }
}


public class CachorroPequeno : Cachorro
{
    public CachorroPequeno(string nome, int idade) : base(nome, idade)
    {
    }

    public override void ShowIdade()
    {
        Console.WriteLine("A idade do pequeno cachorro é: " + Idade);
    }
}

public class Program
{
    public static void Main()
    {
        Cachorro cachorro = new Cachorro("Rex", 5);
        CachorroPequeno pequeno = new CachorroPequeno("Totó", 2);
        CachorroGrande grande = new CachorroGrande("Thor", 7, "Grande");

        
        cachorro.ShowNome();
        cachorro.ShowIdade();
        pequeno.ShowNome();
        pequeno.ShowIdade();
        grande.ShowNome();
        grande.ShowIdade();
    }
}
