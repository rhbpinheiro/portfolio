import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:rodolpho_pinheiro/utils/app_routes.dart';
import 'package:rodolpho_pinheiro/widgets/widget_logo.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 85,
      backgroundColor: Colors.black,
      title: Container(
        margin: const EdgeInsets.only(left: 20),
        child: WidgetLogo(16),
      ),
      actions: [
        TextButton(
          style: hoverButton,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
          },
          child: const Text(
            'Início',
          ),
        ),
        TextButton(
          style: hoverButton,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.ABOUTME);
          },
          child: const Text(
            'Sobre mim',
          ),
        ),
        TextButton(
          style: hoverButton,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.PROJECTS);
          },
          child: const Text(
            'Projetos',
          ),
        ),
        TextButton(
          style: hoverButton,
          onPressed: () {},
          child: const Text(
            'Contato',
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}

