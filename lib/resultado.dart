import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoTotal;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacaoTotal, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacaoTotal < 8) {
      return 'Parabéns';
    } else if (pontuacaoTotal < 12) {
      return 'Você é bom!';
    } else if (pontuacaoTotal < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 28),
          ),
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
