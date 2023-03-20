import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:rodolpho_pinheiro/utils/app_routes.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 85,
      backgroundColor: backgroundHomePage,
      title: Container(
        margin: const EdgeInsets.only(left: 20),
        child: Card(
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
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: colorGreyBorder, width: 10),
                ),
              ),
              child: const Text(
                'Rodolpho\n'
                'Pinheiro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
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
          onPressed: () {
            
          },
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
