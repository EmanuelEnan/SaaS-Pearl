import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rate_my_app/rate_my_app.dart';

import '../model_list/web_list.dart';
import '../widgets/website_card.dart';
import 'about_page.dart';
import 'academy_page.dart';
import 'affiliate_page.dart';
import 'career_page.dart';
import 'contact_us_page.dart';
import 'error_page.dart';
import 'faq_page.dart';
import 'features_page.dart';
import 'login_page.dart';
import 'sign_up.dart';
import 'testimonial_page.dart';
import 'welcome_page.dart';

class HomePage extends StatelessWidget {
  final RateMyApp rateMyApp;
  const HomePage({super.key, required this.rateMyApp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SaaS Pearl'),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 6,
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const AboutPage(),
              ),
            ),
            child: exampleCard('About Page', '${aboutList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const WelcomePage(),
              ),
            ),
            child: exampleCard('Welcome Page', '${welcomeList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const ErrorPage(),
              ),
            ),
            child: exampleCard('404 Page', '${errorList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const ContactUsPage(),
              ),
            ),
            child: exampleCard(
                'Contact Us Page', '${contactUsList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const TestimonialPage(),
              ),
            ),
            child: exampleCard(
                'Testimonial Page', '${testimonialList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const FAQPage(),
              ),
            ),
            child: exampleCard('FAQ Page', '${faqList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const FeaturesPage(),
              ),
            ),
            child:
                exampleCard('Features Page', '${featuresList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const SignupPage(),
              ),
            ),
            child: exampleCard('Signup Page', '${signupList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const AffiliatePage(),
              ),
            ),
            child: exampleCard(
                'Affiliate Page', '${affiliateList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const AcademyPage(),
              ),
            ),
            child: exampleCard('Academy Page', '${academyList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const LoginPage(),
              ),
            ),
            child: exampleCard('Login Page', '${loginList.length} screens'),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.fade,
                child: const CareerPage(),
              ),
            ),
            child: exampleCard('Career Page', '${careerList.length} screens'),
          ),
        ],
      ),
    );
  }
}
