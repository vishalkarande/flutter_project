import 'package:flutter/material.dart';

void main() {
  runApp(MyApp("abc"));
}

class MyApp extends StatelessWidget {
  final String str;

  const MyApp(this.str);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int data = 0;

  void changedata() {
    setState(() {
      data = data + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Head'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$data",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            RaisedButton(
              onPressed: changedata,
              child: Text(
                "click me",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
