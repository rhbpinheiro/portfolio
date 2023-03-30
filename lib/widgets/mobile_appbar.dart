import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/widgets/widget_logo.dart';

import '../constants/constants.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundHomePage,
        title: Container(
          child: WidgetLogo(12),
        ),
      ),
      endDrawer: Container(),
    );
  }
}
