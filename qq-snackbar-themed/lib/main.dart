import 'package:flutter/material.dart';
import 'package:robbinlaw/themes/shrinetheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar Themed Demo',
      debugShowCheckedModeBanner: false,
      home: MyPage(),
      theme: buildShrineTheme(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar Themed Demo'),
        actions: [SnackbarButton()],
      ),
      body: Center(),
    );
  }
}

class SnackbarButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final snackBar = SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text('Text label'),
          action: SnackBarAction(
            label: 'Action',
            onPressed: () {
              print('hey you clicked on the snackbar Action');
            },
          ),
        );

        // Find the Scaffold in the widget tree and use
        // it to show a SnackBar.
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Text('Show SnackBar'),
    );
  }
}
