import 'package:flutter/material.dart';

import '../model_list/web_list.dart';

class AffiliatePage extends StatelessWidget {
  const AffiliatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Affiliate Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...affiliateList,
        ],
      ),
    );
  }
}
