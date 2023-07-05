import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...aboutList,
        ],
      ),
    );
  }
}
