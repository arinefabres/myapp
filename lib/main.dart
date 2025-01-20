import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Primeiro App Flutter Web'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Center(
              child: Text('Modo Mobile', style: TextStyle(fontSize: 24)),
            );
          } else {
            return Center(
              child: Text('Modo Desktop', style: TextStyle(fontSize: 24)),
            );
          }
        },
      ),
    );
  }
}
