import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int a) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$a.wav'),
    );
  }

  Expanded buildkey(b,c){
     return Expanded(
      child:  TextButton(
        style: TextButton.styleFrom(
          backgroundColor: c,
        ),
        child: Container(),
        onPressed: () {
          playsound(b);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildkey(1,Colors.red),
                buildkey(2,Colors.orange),
                buildkey(3,Colors.yellow),
                buildkey(4,Colors.green),
                buildkey(5,Colors.teal),
                buildkey(6,Colors.blue),
                buildkey(7,Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
