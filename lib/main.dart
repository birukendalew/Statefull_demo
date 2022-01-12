import 'package:flutter/material.dart';

void main() {
  runApp(New());
}

class New extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _New();
  }
}

class _New extends State<New> {
  int count = 0;
  int imN = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Background Change'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/n$imN.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Text('you clicked ${count} times',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      persistentFooterButtons: [
        RaisedButton(
          onPressed: () {
            setState(() {
              if (imN >= 5) {
                imN = 1;
              }
              imN++;
            });
          },
          child: Text('Change Background'),
          color: Colors.blue,
        ),
        RaisedButton(
            color: Colors.green,
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text('Count')),
      ],
    ));
  }
}
