import 'package:flutter/material.dart';

import '../constants/constants.dart';

class WidgetFooter extends StatefulWidget {
  const WidgetFooter({super.key});

  @override
  State<WidgetFooter> createState() => _WidgetFooterState();
}

class _WidgetFooterState extends State<WidgetFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.screenWidth,
        height: context.percentHeight(.3),
        color: backgroundHomePage,
        child: Column(
          children: const [
            Text(
              'Footer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ],
        ));
  }
}
