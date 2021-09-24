import 'dart:math';

class Operacoes {
  dynamic somar(dynamic v1, dynamic v2) {
    return v1 + v2;
  }

  dynamic subtrair(dynamic v1, dynamic v2) {
    return v1 - v2;
  }

  dynamic mutiplicar(dynamic v1, dynamic v2) {
    return v1 * v2;
  }

  dynamic potencia(dynamic base, dynamic expoente) {
    return pow(base, expoente);
  }

  bool isPar(int valor) {
    return (valor % 2 == 0);
  }
}
