import 'package:flutter/material.dart';

class EmailSignInPage extends StatefulWidget {
  const EmailSignInPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EmailSignInState();
}

class _EmailSignInState extends State<EmailSignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
              margin: const EdgeInsets.only(top: 9),
              child: const Text('이메일로 로그인')),
          leading: IconButton(
            iconSize: 24,
            color: Colors.grey,
            padding: const EdgeInsets.only(top: 9),
            icon: const Icon(Icons.arrow_back_ios, size: 20),
            onPressed: () {
              Navigator.pop(context);
            },
          )
      ),
    );
  }
}