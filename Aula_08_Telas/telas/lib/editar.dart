import 'package:flutter/material.dart';

class Editar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela de Edição")),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Voltar para Cadastro"),
            )
          ],
        ),
      ),
    );
  }
}


// Gostaria que vocês criassem a tela de login 
// com a opção de novo usuário