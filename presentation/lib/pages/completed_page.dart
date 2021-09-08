import 'package:flutter/material.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({Key key}) : super(key: key);

  @override
  _CompletedPageState createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Completed page"),
      ),
    );
  }
}
