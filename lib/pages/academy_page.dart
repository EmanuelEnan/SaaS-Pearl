import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class AcademyPage extends StatelessWidget {
  const AcademyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Academy Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...academyList,
        ],
      ),
    );
  }
}
