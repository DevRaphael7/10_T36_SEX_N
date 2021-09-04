import 'dart:math';

void main(List<String> arguments) {
  // Continuação de listas...
  // var produtos = <String>[
  //   'Cenoura',
  //   'Cenoura',
  //   'Cenoura',
  //   'Brócolis',
  //   'Melancia',
  //   'Mamão'
  // ];

  // Ordenação crescente
  // var produtos_ordenados = produtos..sort();
  // print(produtos_ordenados);

  // Ordenação decrescente
  // var produtos_decrescente = produtos_ordenados.reversed;
  // print(produtos_decrescente);

  // Ordenação por lambda (função anônima)
  // print(produtos);
  // produtos.sort((x, y) => x.compareTo(y));
  // print(produtos);

  // produtos.sort((y, x) => x.compareTo(y));
  // print(produtos);

  // Mesclagem de listas
  // Forma imperativa (altera o estado da lista)
  // var x = <String>['Pia', 'Porta', 'Lavanderia'];
  // var y = <String>['Cama', 'Sofá', 'Estante'];
  // x.addAll(y); similar ao copy() do Python
  // print(y);
  // print(x);

  //Forma funcional (retorna o valor sem alterar a lista)
  // var saida = [x, y].expand((e) => e).toList();
  // print('Funcional $saida');
  // print(x);
  // print(y);

  // Criar uma lista com 50 números aleatórios entre 0 e 100
  // 1 - Excluir apenas os que forem menores que 10
  // 2 - Verificar se o número 77 está na lista
  // 3 - Criar uma lista com 10 números negativos e incoporar a lista 1
  // 4 - Mostrar o conteúdo da lista nova em ordem crescrente e decrescente
  // Dica: import 'dart:math';
  // Dica: List.generate()

  // var random = Random();
  // //Cria lista com 100 numeros aleatorios;
  // var items = List<int>.generate(100, (index) => random.nextInt(100) * -1);
  // print('Itens gerados: $items');

  // //Remove os numeros que são menores que 10
  // items.removeWhere((number) => number < 10);
  // print('Itens após remoção: $items');

  // if (items.contains(77)) {
  //   print('O número 77 existe na lista');
  // }

  // var negativeItems = List.generate(100, (index) => random.nextInt(100));
  // var expandedList = [items, negativeItems].expand((item) => item).toList();
  // print(expandedList);

  // expandedList.sort((a, b) => a.compareTo(b));
  // var expandedListSortedDescending = expandedList.reversed;

  // print('Lista ordenada: $expandedList');
  // print('Lista ordenada decrescente: $expandedListSortedDescending');
  var produtos = <String>[
    'Cenoura',
    'Cenoura',
    'Cenoura',
    'Brócolis',
    'Melancia',
    'Mamão'
  ];
  print(calculaMedia(10, 20));
  print('Média: ${mediaPower([1, 2, 3, 4, 5])}');
}

// Funções em Dart
void calcula() {
  print('Corpo da função');
}

// Vamos calcular uma média
dynamic calculaMedia(int a, int b) {
  return (a + b) / 2;
}

// Média mais elaborada
dynamic mediaPower(List<double> lista) {
  dynamic soma = 0;

  for (var item in lista) {
    soma += item;
  }

  return soma / lista.length;
}
