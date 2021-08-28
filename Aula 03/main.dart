// Um código Dart sempre será executado
// em um método main()

void main() {
//   essa estrutura é muito similar ao Java
//   comentários em linha são feitos por //
/*
 * Comentário em blocos
 * Outra linha do comentário
 * */
// Variáveis
//   String, int, double, Map, dynamic, var, bool
// Declarando variáveis
  String curso = 'Sistemas de Informação';
  int qtdAlunos = 82;
  bool temVaga = true;
  double mensalidade = 450.78;
  
//   Como mostrar valores (output)
  print(curso);
  print(temVaga);
  print(qtdAlunos);
  print(mensalidade);
  
//   Concatenar dados (agregar/juntar)
//   Duas formas: concatenação (+) e a 
//   interpolação ({})
  print('O curso de ' + curso + ' tem ' 
        + qtdAlunos.toString() + ' alunos.');
  
//   Interpolação
  print('O curso de $curso tem $qtdAlunos alunos.');
  
  // Calcule o faturamento da turma
  double f = qtdAlunos * mensalidade;
  print(f);
  
//   Outra forma
  print('Faturamento: ${qtdAlunos*mensalidade}');
  
//   Exemplo que o Dart reclama
  print('Mensalidade: ${mensalidade}');
  
//   Interpolação com String
  print('O valor da mensalidade é de R\$ $mensalidade');
  
//   Desvio condicional
  if(temVaga){ // verifica-se sempre a condição verdadeira
    print('Ainda tem vaga no curso');
  }else{
    print('Encerram-se as inscrições');
  }
  
//   Trabalhando com variáveis especiais
//   Tipo 'dynamic' - permite definir uma variável
//   determinando seu "tipo" a partir do valor
//   atribuído durante a declaração ou atribuição
  dynamic dinamica = 'Edson Melo'; // String
  print('$dinamica é ${dinamica.runtimeType}');

  dinamica = false; // bool
  print('$dinamica é ${dinamica.runtimeType}');
  
  dinamica = mensalidade*qtdAlunos; // ???
  print('$dinamica é ${dinamica.runtimeType}');
  
//  Parser: .toDouble(val), .toInt(val)
  
//  Tipo 'var': esse tipo permite atribuir o 
//  "tipo" da variável a partir da "PRIMEIRA"
//  atribuição. Não é possível alterar após
//  esse ponto.
  var estatica = 'Edson Melo'; // String
  print('$estatica é ${estatica.runtimeType}');
  
//   estatica = 158;
//   print('$estatica é ${estatica.runtimeType}');

// TREINANDO (5 minutos)
//   Faça um código que calcule a média para
//   três variáveis, mostrando o passo-a-passo
//   Saída: A soma entre v1 (2), v2 (5), v3 (8) é: 15
//   A média entre v1 (2), v2 (5), v3 (8) é: 5
  double v1 = 5235.78, v2 = 5587.153, v3 = 123.01;
  double soma = v1+v2+v3;
  double media = soma/3;
//   Fixar casas decimais: toStringAsFixed(qtd)
  print('Soma.: $soma');
  print('Soma.: ${soma.toStringAsFixed(2)}');
  
  print('Média: $media');
  print('Média: ${media.toStringAsFixed(3)}');

  // Estudando listas
// Listas são estruturas que armazenam dados 
// de forma sequencial. São similares aos vetores,
// sendo indicadas por colchetes [...]

 // Declaração de uma lista (<> significa diamond)
//   tipo variavel = <Tipo>[valor1, valor2,...valorn]
//   índice                   0           1           2 
  var produtos = <String>['Cenoura', 'Brócolis', 'Melancia'];
  print(produtos);
  
//   Acessando valores pelo índice
  print(produtos[0]);
  print(produtos[1]);
  print(produtos[2]);
  
  print('O tamanho da lista é ${produtos.length}');
  
//   Laços de repetição
//   FOR - temos que saber o tamanho
  for(var i=0; i < produtos.length; i++){
    print('Índice $i => ${produtos[i]}');
  }
  
//   FOREACH(IN) - percorre uma lista até o seu limite
  for(var produto in produtos){
    print(produto);
  }
  
//   Operações com listas
//   Adicionar elementos na lista add(value) - sempre no final
  print(produtos);
  produtos.add('Abacaxi');
  print(produtos);
  
//   Adicionar em uma posição específica - insert(index, value)
  print(produtos);
  produtos.insert(1, 'Pêra');
  print(produtos);
  
  print(produtos);
  produtos.insert(produtos.length, 'Jaca'); // no final
  print(produtos);
  
//   Adição de itens múltiplos
//   Forma 1
  produtos..add('Maça')..add('Feijão')..add('Tomate');
  print(produtos);
  
//   Forma 2 - posição pelo índice
  var p = <String>[];
  p.insertAll(0, ['Tomate', 'Repolho', 'Beterraba']);
  print(p);
  
//   Forma 3 - no final da lista
  var z = <String>[];
  z.addAll(['Melancia', 'Jaca', 'Pepino']);
  print(z);
  
  
// Remover: remove, removeAt, removeLast, removeRange, removeWhere
//   var.remove('value')
  
  var produtos2 = <String>['Cenoura', 'Cenoura', 'Cenoura', 'Brócolis', 'Melancia', 'Mamão'];  
  print(produtos2);
  produtos2.remove('Cenoura');
  print(produtos2);
  
//   Removendo com lambda todas as ocorrências
  produtos2.removeWhere((String produto) => produto == 'Cenoura');
  print(produtos2);
  
//   removeAt(index)
  produtos2.removeAt(1);
  print(produtos2);
  
//   removeLast()
  produtos2.removeLast();
  print(produtos2);

  var pro = <String>[
    'Cenoura', 'Jaca', 'Tomate', 
    'Brócolis', 'Melancia', 'Mamão'
  ];
  
//   removeRange(start, end)
  print(pro);
  pro.removeRange(2, 3);
  print(pro);
}
