import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Magic Ball'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: MagicPage(),
    ),
  ));
}

class MagicPage extends StatefulWidget {
  const MagicPage({Key? key}) : super(key: key);

  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int nextball = 3 ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                  onPressed:(){
                    setState(() {
                      nextball = Random().nextInt(5) + 1;
                    });
                    print('Next');
                  },
                child: Image.asset('images/ball$nextball.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
