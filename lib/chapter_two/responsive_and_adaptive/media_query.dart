import 'package:flutter/material.dart';

class MediaQueryExample extends StatefulWidget {
  MediaQueryExample({Key? key}) : super(key: key);

  @override
  _MediaQueryExampleState createState() => _MediaQueryExampleState();
}

class _MediaQueryExampleState extends State<MediaQueryExample> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(
        'Media Query example',
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
      ],
    );
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: appBar,
      ),
      body: SingleChildScrollView(
        child: isLandscape
            ? IsPortraitColumn(appBar: appBar)
            : IsLandscapeColumn(appBar: appBar),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {},
      ),
    );
  }
}

class IsLandscapeColumn extends StatelessWidget {
  const IsLandscapeColumn({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CommonContainer(appBar: appBar),
        CommonContainer(appBar: appBar),
      ],
    );
  }
}

class IsPortraitColumn extends StatelessWidget {
  const IsPortraitColumn({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CommonContainer(appBar: appBar),
        CommonContainer(appBar: appBar),
      ],
    );
  }
}

class CommonContainer extends StatelessWidget {
  const CommonContainer({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      height: (MediaQuery.of(context).size.height -
              appBar.preferredSize.height -
              MediaQuery.of(context).padding.top) *
          0.45,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Colors.purple,
              border: Border.all(
                width: 5,
                color: Colors.grey,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Books'),
                        subtitle: Text('25.00'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Groceries'),
                        subtitle: Text('250.00'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Fruits'),
                        subtitle: Text('480.00'),
                      ),
                      Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton(
                              onPressed: () => {},
                              child: Text(' ADD '),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton(
                              onPressed: () => {},
                              child: Text(' UPDATE '),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton(
                              onPressed: () => {},
                              child: Text(' DELETE '),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton(
                              onPressed: () => {},
                              child: Text(' NEXT PAGE '),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
