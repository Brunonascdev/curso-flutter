imprimirProduto(int qtd, {String nome, double preco}) {
  for (var i = 0; i < qtd; i++) {
    print('O produto ${nome} tem preço R\$${preco}');
  }
}

class Produto {
  String nome;
  double preco;

  Produto({this.nome, this.preco = 9.99});
}

main() {
  var p1 = Produto(nome: 'Bruno', preco: 4.23);
  var p2 = Produto(nome: 'Lucas');
  // p1.nome = 'Bruno';
  // p1.preco = 4;

  imprimirProduto(9, preco: p1.preco, nome: p1.nome);
  imprimirProduto(4, preco: p2.preco, nome: p2.nome);
}
