import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(String url) async {
  // final Uri uri = Uri(host: url);

  Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  } else {
    throw Exception('can not launch the link - $url');
  }
}

Widget websiteCard(String img, String txt, String webLink) {
  return InkWell(
    onTap: () => _launchUrl(webLink),
    // onTap: () => launchUrl(
    //   Uri.parse(webLink),
    // ),
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 450,
        width: 400,
        child: Card(
          child: Column(
            children: [
              Image.asset(
                img,
                height: 400,
                width: 400,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(txt),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget exampleCard(String txt, String num) {
  return Padding(
    padding: const EdgeInsets.only(top: 12.0, bottom: 12),
    child: SizedBox(
      height: 150,
      width: 200,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              txt,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              num.toString(),
            ),
          ],
        ),
      ),
    ),
  );
}
