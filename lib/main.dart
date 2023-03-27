import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text Filed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyTextFiled(),
    );
  }
}



class MyTextFiled extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyTextFiled> {
  String enter_text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Filed'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (text) {
                setState(() {
                  enter_text = text;
                });
              },
            ),
            SizedBox(height: 20),
            Text(enter_text),
          ],
        ),
      ),
    );
  }
}