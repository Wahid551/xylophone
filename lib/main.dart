import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text(
            'Xylophone',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: song(),
      ),
    );
  }
}

class song extends StatefulWidget {
  @override
  _songState createState() => _songState();
}

class _songState extends State<song> {
  void sound(int number) {
    final play = AudioCache();
    play.play('note$number.wav');
  }

  Expanded createbtn(Color c, int number) {
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          sound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        createbtn(Colors.orange, 1),
        createbtn(Colors.pink, 2),
        createbtn(Colors.blue, 3),
        createbtn(Colors.amberAccent, 4),
        createbtn(Colors.brown, 5),
        createbtn(Colors.deepOrange, 6),
        createbtn(Colors.cyanAccent, 7),
      ],
    );
  }
}
