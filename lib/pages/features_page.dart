import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Features Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...featuresList,
        ],
      ),
    );
  }
}
