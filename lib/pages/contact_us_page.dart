import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...contactUsList,
        ],
      ),
    );
  }
}
