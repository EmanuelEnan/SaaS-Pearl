import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:rate_my_app/rate_my_app.dart';
import 'package:saas_pearl/pages/rating_pages/rate_app_init_widget.dart';
// import 'package:rate_my_app/rate_my_app.dart';

import 'home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Opacity(
              opacity: .4,
              child: Image.asset(
                'assets/landing/1.jpg',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'SaaS Pearl',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.cyan[400]),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 8, right: 20, left: 20),
                  child: Text(
                    'Need Inspirations for Your Next SAAS?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                  child: Text(
                    'Create websites, product interfaces and login sequences for your SaaS faster than ever with our library of curated screens and flows.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.black54,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: RateAppInitWidget(
                            builder: (rateMyApp) => HomePage(
                              rateMyApp: rateMyApp,
                            ),
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Explore all screens',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
