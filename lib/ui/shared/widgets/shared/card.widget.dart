import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        // elevation: 1.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Padding(
                //   padding: EdgeInsets.only(right: 10),
                // ),
                Text(
                  'item',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  'charge',
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.black87,
              ),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.adb, color: Colors.blueGrey),
              title: Text("data"),
              subtitle: Text("data2"),
            ),
            Divider(),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
