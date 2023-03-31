import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/widgets/widget_logo.dart';


class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      title: Container(
        child: WidgetLogo(12),
      ),
      
    );
  }
}
