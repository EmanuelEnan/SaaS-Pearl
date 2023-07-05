import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...signupList,
        ],
      ),
    );
  }
}
