import 'package:flutter/material.dart';

import 'cadastro.dart';
import 'editar.dart';

void main() {
  runApp(
    MaterialApp(
      home: Cadastro(),
      // primeira tela ser mostrada
      debugShowCheckedModeBanner: false,
    ),
  );
}
