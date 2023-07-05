import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Career Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...careerList,
        ],
      ),
    );
  }
}
