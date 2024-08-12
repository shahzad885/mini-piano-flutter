import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void generateSound(int soundNo) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNo.wav'));
  }

  Expanded buildKey({required int soundNo, required Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: () {
          generateSound(soundNo);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 229, 122, 16),
          title: Center(child: Text('Developer: Shahzad')),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              //   Text(
              //     'DEVELOPER : SHAHZAD AHMAD',
              //   ),
              //   SizedBox(
              //     height: 30,
              //   ),
              // ]),

              buildKey(
                  soundNo: 1, color:Color.fromARGB(255, 250, 250, 249)),
              buildKey(
                  soundNo: 2, color: Color.fromARGB(255, 229, 122, 16)),
              buildKey(
                  soundNo: 3, color: Color.fromARGB(255, 250, 250, 249)),
              buildKey(soundNo: 4, color: Color.fromARGB(255, 229, 122, 16)),
              buildKey(soundNo: 5, color: Color.fromARGB(255, 250, 250, 249)),
              buildKey(soundNo: 6, color:Color.fromARGB(255, 229, 122, 16)),
              buildKey(soundNo: 7, color:Color.fromARGB(255, 250, 250, 249)),
              // Add more keys here if needed
            ],
          ),
        ),
      ),
    );
  }
}
