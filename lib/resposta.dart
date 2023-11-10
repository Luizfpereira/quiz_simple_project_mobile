import 'package:flutter/material.dart';
import 'package:projeto_perguntas/main.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() onSelect;

  const Resposta(this.resposta, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        onPressed: onSelect,
        child: Text(resposta),
      ),
    );
  }
}
