import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...welcomeList,
        ],
      ),
    );
  }
}
