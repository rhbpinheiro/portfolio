import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';

class PresentationWidget extends StatelessWidget {
  const PresentationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.percentHeight(.8),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("../../assets/images/background1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: context.screenWidth,
        height: context.percentHeight(.8),
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black54,
                  border: Border.all(width: 3, color: colorGreyBorder),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(75),
                  ),
                ),
                child: const Image(
                  width: 150,
                  image: AssetImage(
                    '../../assets/images/perfil.png',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Olá, sou',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Rodolpho Pinheiro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Desenvolvedor Front-End Flutter Web e Mobile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesome.github,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesome.linkedin,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      BoxIcons.bxl_gmail,
                      color: Colors.white,
                    ),
                  ),
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
