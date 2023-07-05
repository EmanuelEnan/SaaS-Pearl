import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...loginList,
        ],
      ),
    );
  }
}
