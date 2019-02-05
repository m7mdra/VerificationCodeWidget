import 'package:flutter/material.dart';
import 'package:verification_code_widget/verification_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _key = GlobalKey<VerificationCodeWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _key.currentState.clearCells();
        },
        child: Icon(Icons.delete_sweep),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          VerificationCodeWidget(
            4,
            key: _key,
            onCodeChange: (code) {},
            onComplete: (bool) {
              print("is completed? $bool");
            },
          ),
        ],
      ),
    );
  }
}


