import 'operacoes.dart';

void main(List<String> args) {
  // instaciar uma classe
  // var aluno = Aluno();
  // aluno.nome = 'Edson Melo';
  // aluno.idade = 50;
  // print('O aluno ${aluno.nome} tem ${aluno.idade} anos.');

  // aluno.fazAniversario();
  // print('Agora, o aluno ${aluno.nome} tem ${aluno.idade} anos.');

  var op = Operacoes();
  var v1 = 2;
  var v2 = 3;

  print(op.somar(v1, v2));
  print(op.subtrair(v1, v2));
  print(op.mutiplicar(v1, v2));
  print(op.potencia(v1, v2));
  print(op.isPar(v1));
  print(op.isPar(v2));
}

// Classes em Dart
class Aluno {
  late String nome;
  late int idade;

  // método
  void fazAniversario() {
    idade++;
  }
}

// Implementar uma classe que contenha quatro operações matemáticas: soma, subtração, multiplicação e potencia e verificar se um valor é par ou ímpar
// Dica: import 'dart:math' pow(base, exp)


