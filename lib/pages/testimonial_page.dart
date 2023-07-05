import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class TestimonialPage extends StatelessWidget {
  const TestimonialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testimonial Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...testimonialList,
        ],
      ),
    );
  }
}
