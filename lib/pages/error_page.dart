import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('404 Error Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...errorList,
        ],
      ),
    );
  }
}
