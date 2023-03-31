import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';

class WidgetFooter extends StatefulWidget {
  const WidgetFooter({super.key});

  @override
  State<WidgetFooter> createState() => _WidgetFooterState();
}

class _WidgetFooterState extends State<WidgetFooter> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      color: Colors.black,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Redes Sociais',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => _launchInBrowser(gitHubUri),
                icon: const Icon(
                  FontAwesome.github,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () => _launchInBrowser(linkedinUri),
                icon: const Icon(
                  FontAwesome.linkedin,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () => _launchInBrowser(instagramUri),
                icon: const Icon(
                  FontAwesome.instagram,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () => _launchInBrowser(whatsappUri),
                icon: const Icon(
                  FontAwesome.whatsapp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.email,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'rhbpinheiro30@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '© 2023 Desevvolvido por Rodolpho Pinheiro',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
