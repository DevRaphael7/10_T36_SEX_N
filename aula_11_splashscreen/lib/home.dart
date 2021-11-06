import 'package:flutter/material.dart';
import 'splash.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: const Text(
              'Carregou a tela principal',
              style: TextStyle(fontSize: 36.0),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          // Botão para dar reaload no Splash
          RawMaterialButton(
            padding: EdgeInsets.all(30.0),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SplashScreen()));
            },
            child: const Text(
              'Recarregar o Splash',
              style: TextStyle(color: Colors.white, fontSize: 35.0),
            ),
            fillColor: Colors.lightBlue[900],
          ),
        ],
      ),
    );
  }
}
