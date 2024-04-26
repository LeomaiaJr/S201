class AnimalCorrida {
  constructor(velocidade, nome, cor) {
    this.velocidade = velocidade;
    this.nome = nome;
    this.cor = cor;
  }
}

class Cavalo extends AnimalCorrida {
  #posicao = 0;
  finalizou = false;

  mover() {
    if (this.#posicao < 200) {
      this.#posicao += this.velocidade * 4;
    } else {
      this.finalizou = true;
      console.log(`${this.nome} terminou a corrida!`);
    }
  }
}

const cavalo1 = new Cavalo(10, 'Cavalo1', 'Marrom');
const cavalo2 = new Cavalo(11, 'Cavalo2', 'Preto');
const cavalo3 = new Cavalo(12, 'Cavalo3', 'Branco');

while (!cavalo1.finalizou && !cavalo2.finalizou && !cavalo3.finalizou) {
  cavalo1.mover();
  cavalo2.mover();
  cavalo3.mover();
}
