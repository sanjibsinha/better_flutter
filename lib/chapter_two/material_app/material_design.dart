import 'dart:ui';

import 'package:flutter/material.dart';

class MaterialDesign extends StatelessWidget {
  const MaterialDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Better Flutter - Essential Widgets',
      home: MDFirstPage(),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => MDSecondPage(),
          fullscreenDialog: true,
        );
      },
    );
  }
}

class MDFirstPage extends StatelessWidget {
  const MDFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Design First Page'),
      ),
      body: MDFirstPageBody(),
    );
  }
}

class MDFirstPageBody extends StatelessWidget {
  const MDFirstPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(
            width: 5,
            color: Colors.purple,
          )),
          child: Text(
            'Material Design First Page',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class MDSecondPage extends StatelessWidget {
  const MDSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Design Second Page'),
      ),
      body: MDSecondPageBody(),
    );
  }
}

class MDSecondPageBody extends StatelessWidget {
  const MDSecondPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(
            width: 5,
            color: Colors.purple,
          )),
          child: Text(
            'Material Design Second Page',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}