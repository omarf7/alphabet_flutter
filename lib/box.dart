import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color color;
  final String text;
  const Box({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      color: color,
      child: InkWell(
        onTap: () {
          AudioPlayer audioPlayer = AudioPlayer();
          audioPlayer.play("lib/assets/audio/abc.mp3", isLocal: true);
        },
        child: Container(
          margin: EdgeInsets.only(top: 40),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
