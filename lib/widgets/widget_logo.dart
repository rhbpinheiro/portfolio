import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../utils/app_routes.dart';

class WidgetLogo extends StatelessWidget {
  double? fontSize;
  WidgetLogo(this.fontSize,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: colorGreyBorder, width: 10),
              ),
            ),
            child: Text(
              'Rodolpho\n'
              'Pinheiro',
              style: TextStyle(
                color: Colors.white,
                fontSize:fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
