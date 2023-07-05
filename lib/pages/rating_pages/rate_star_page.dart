import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';

import '../../widgets/button_widget.dart';

class RateStarsPage extends StatefulWidget {
  final RateMyApp rateMyApp;

  const RateStarsPage({
    Key? key,
    required this.rateMyApp,
  }) : super(key: key);

  @override
  RateStarsPageState createState() => RateStarsPageState();
}

class RateStarsPageState extends State<RateStarsPage> {
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(48),
        child: Center(
          child: ButtonWidget(
            text: 'Rate App',
            onClicked: () => widget.rateMyApp.showStarRateDialog(
              context,
              title: 'Rate This App',
              message: 'Do you like this app? Please leave a rating',
              starRatingOptions: const StarRatingOptions(initialRating: 4),
              actionsBuilder: actionsBuilder,
            ),
          ),
        ),
      );

  List<Widget> actionsBuilder(BuildContext context, double? stars) =>
      stars == null
          ? [buildCancelButton()]
          : [buildOkButton(stars), buildCancelButton()];

  Widget buildOkButton(double stars) => TextButton(
        child: const Text('OK'),
        onPressed: () async {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Thanks for your feedback!')),
          );

          final launchAppStore = stars >= 4;

          const event = RateMyAppEventType.rateButtonPressed;

          await widget.rateMyApp.callEvent(event);

          if (launchAppStore) {
            widget.rateMyApp.launchStore();
          }

          if (mounted) Navigator.of(context).pop();
        },
      );

  Widget buildCancelButton() => RateMyAppNoButton(
        widget.rateMyApp,
        text: 'CANCEL',
      );
}
