import 'package:flutter/material.dart';
import 'package:telas/editar.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela de Cadastro")),
      body: Center(
        child: Column(
          children: [
            // criar um botão para seguir até a outra tela
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Editar()));
              },
              child: Text("Próxima Tela (Editar)"),
            ),
          ],
        ),
      ),
    );
  }
}
