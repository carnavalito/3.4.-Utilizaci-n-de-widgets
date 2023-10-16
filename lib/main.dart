import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets Básicos en Flutter'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hola, este es un ejemplo de uso de widgets en Flutter:',
            style: TextStyle(fontSize: 18),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Container',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Rojo',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Verde',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  'Stack',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
