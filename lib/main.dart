import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: () {},
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
              child: Text(
            "Score is",
            style: TextStyle(
                color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            number.toString(),
            style: TextStyle(
                color: Colors.red, fontSize: 125, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Increase',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 8,
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
