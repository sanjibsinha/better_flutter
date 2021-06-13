import 'package:flutter/material.dart';
import 'container_row_column_modified.dart';
import 'package:better_flutter/chapter_two/responsive_and_adaptive/media_query.dart';

class ContainerColumnRow extends StatelessWidget {
  const ContainerColumnRow({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Difference between container, column and row',
      // home: CCRFirstPage(),

      /// in this example we will try to experiment
      /// with device mode - portrait mode and landscape mode
      ///
      home: MediaQueryExample(),
    );
  }
}

class CCRFirstPage extends StatelessWidget {
  const CCRFirstPage({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container, Column and Row first page'),
      ),
      // body: CCRFirstPageBody(),
      body: ContainerRowColumnModified(),
    );
  }
}

class CCRFirstPageBody extends StatelessWidget {
  const CCRFirstPageBody({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.purple,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('ADD TO LIST'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('DELETE'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
