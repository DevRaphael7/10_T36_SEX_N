import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Artboard _riveArtboard;
  RiveAnimationController _controller;
  bool get isPlaying => _controller?.isActive ?? false;

  @override
  void initState() {
    super.initState();
    // seleção do tipo de animação (arquivos locais)
    // Para carregamento remoto, seguir a documentação: https://pub.dev/packages/rive
    rootBundle.load('assets/unizap.riv').then((value) {
      final file = RiveFile();
      if (file.import(value)) {
        final artboard = file.mainArtboard;
        artboard.addController(_controller = SimpleAnimation('principal'));
        setState(() => _riveArtboard = artboard);
      }
    });
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: _riveArtboard == null
              ? const SizedBox()
              : Rive(artboard: _riveArtboard),
        ),
      ),
    );
  }
}
