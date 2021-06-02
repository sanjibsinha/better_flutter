import 'dart:ui';

import 'package:flutter/material.dart';

/// this is our main app that will return material design
///

class MaterialDesign extends StatelessWidget {
  const MaterialDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Better Flutter - Essential Widgets',
      home: MDFirstPage(),
      initialRoute: '/second',
      onGenerateRoute: _getSecondPageFirst,
    );
  }

  Route<dynamic>? _getSecondPageFirst(RouteSettings settings) {
    if (settings.name != '/second') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => MDSecondPage(),
      fullscreenDialog: true,
    );
  }
}

/// this is first page that will not open as the initial router
/// points to the second page
///

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

/// the second page will open first as the initial route
/// points to this page
///

class MDSecondPage extends StatelessWidget {
  const MDSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Material Design Second Page',
        ),
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
            'We\'ve forced the user to come to the' +
                ' Material Design Second Page,' +
                ' Which can be a login page',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(
            width: 5,
            color: Colors.greenAccent,
          )),
          child: Text(
            'Click the cross icon on the top left,' +
                ' this will take us to the first page',
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
