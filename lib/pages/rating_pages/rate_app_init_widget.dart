import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:saas_pearl/pages/rating_pages/rate_star_page.dart';

class RateAppInitWidget extends StatefulWidget {
  final Widget Function(RateMyApp) builder;

  const RateAppInitWidget({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  RateAppInitWidgetState createState() => RateAppInitWidgetState();
}

class RateAppInitWidgetState extends State<RateAppInitWidget> {
  RateMyApp? rateMyApp;

  static const playStoreId = 'com.android.chrome';

  @override
  Widget build(BuildContext context) => RateMyAppBuilder(
        rateMyApp: RateMyApp(
          googlePlayIdentifier: playStoreId,
          minDays: 2,
          minLaunches: 3,
          remindDays: 5,
          remindLaunches: 4,
        ),
        onInitialized: (context, rateMyApp) {
          setState(() => this.rateMyApp = rateMyApp);

          if (rateMyApp.shouldOpenDialog) {
            RateStarsPage(rateMyApp: rateMyApp);
          }
        },
        builder: (context) => rateMyApp == null
            ? const Center(child: CircularProgressIndicator())
            : widget.builder(rateMyApp!),
      );
}
