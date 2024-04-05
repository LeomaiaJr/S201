#include <iostream>
#include <string>

class Pessoa {
protected:
    std::string nome;
    int idade;

public:
    Pessoa(std::string n, int i) : nome(n), idade(i) {}

    void imprimeNome() {
        std::cout << "O nome é: " << nome << std::endl;
    }

    virtual void imprimeIdade() {
        std::cout << "Idade: " << idade << " anos" << std::endl;
    }
};

class Professor : public Pessoa {
public:
    Professor(std::string n, int i) : Pessoa(n, i) {}

    void imprimeIdade() override {
        std::cout << "A idade do professor " << nome << " é: " << idade << " anos" << std::endl;
    }
};

class Aluno : public Pessoa {
private:
    std::string matricula;

public:
    Aluno(std::string n, int i, std::string m) : Pessoa(n, i), matricula(m) {}

    void imprimeIdade() override {
        std::cout << "A idade do aluno " << nome << " é: " << idade << " anos" << std::endl;
    }

    void imprimeMatricula() {
        std::cout << "A matrícula é: " << matricula << std::endl;
    }
};

int main() {
    Pessoa pessoa("João", 30);
    Professor professor("Maria", 45);
    Aluno aluno("Pedro", 20, "202301");

    pessoa.imprimeNome();
    pessoa.imprimeIdade();

    professor.imprimeNome();
    professor.imprimeIdade();

    aluno.imprimeNome();
    aluno.imprimeIdade();
    aluno.imprimeMatricula();

    return 0;
}
