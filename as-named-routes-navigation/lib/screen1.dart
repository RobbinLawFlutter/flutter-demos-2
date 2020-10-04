import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('Go To Screen 2'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/second',
            );
          },
        ),
      ),
    );
  }
}
