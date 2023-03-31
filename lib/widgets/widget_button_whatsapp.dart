import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonWhatssapp extends StatelessWidget {
  const ButtonWhatssapp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundHomePage,
      heroTag: FloatingActionButtonLocation.endFloat,
      onPressed: () {
        final Uri url = Uri(
            scheme: 'https',
            host: 'api.whatsapp.com',
            path: '/send',
            queryParameters: {'phone': '556196200181'});
        launchUrl(url);
      },
      child: const Icon(
        size: 30,
        color: Color(0XFFFFFFFF),
        FontAwesome.whatsapp,
      ),
    );
  }
}
