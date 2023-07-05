import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...faqList,
        ],
      ),
    );
  }
}
