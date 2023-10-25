import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ExpansionTile with Radio Button'),
        ),
        body: Center(
          child: MyExpansionTile(),
        ),
      ),
    );
  }
}

class MyExpansionTile extends StatefulWidget {
  @override
  _MyExpansionTileState createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Expansion Tile Title'), // Text on the left side
            Radio<bool>(
              value: true,
              groupValue: _isSelected,
              onChanged: (bool? value) {
                setState(() {
                  _isSelected = value ?? false;
                });
              },
            ), // Radio button on the right side
          ],
        ),
        children: <Widget>[
          ListTile(
            title: Text('Expanded Content Here'),
          ),
        ],
      ),
    );
  }
}
