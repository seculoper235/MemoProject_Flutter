import 'package:flutter/material.dart';

class EmailSignUpPage extends StatefulWidget {
  const EmailSignUpPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EmailSignUpState();
}

class _EmailSignUpState extends State<EmailSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
              margin: const EdgeInsets.only(top: 9),
              child: const Text('이메일로 회원가입')),
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