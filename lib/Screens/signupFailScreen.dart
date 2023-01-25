import 'package:flutter/material.dart';
class FailScreen extends StatelessWidget {
  const FailScreen({Key? key}) : super(key: key);
  static const routeName = "/FailScreen";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(child: Text('Signin Failed !')),
    );
  }
}
