import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildKey(int num, Color color) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.yellow),
              buildKey(3, Colors.greenAccent),
              buildKey(4, Colors.blueAccent),
              buildKey(5, Colors.orange),
              buildKey(6, Colors.purpleAccent),
              buildKey(7, Colors.cyan),
            ],
          ),
        ),
      ),
    );
  }
}
