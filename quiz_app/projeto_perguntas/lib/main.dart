import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
            backgroundColor: Colors.pink,
          ),
          body: Column(
            children: <Widget>[
              Text(perguntas[perguntaSelecionada]),
              RaisedButton(
                child: Text(
                  'Resposta 1',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: responder,
                color: Colors.pink,
              ),
              RaisedButton(
                child: Text(
                  'Resposta 2',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: responder,
                color: Colors.pink,
              ),
              RaisedButton(
                child: Text(
                  'Resposta 3',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: responder,
                color: Colors.pink,
              ),
            ],
          )),
    );
  }
}
