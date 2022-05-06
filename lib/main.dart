import 'package:flutter/material.dart';

import 'YoutubeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Screen(),
    )
  );
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black26,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 40.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('data'),
                YoutubeScreen(title: 'test project',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
