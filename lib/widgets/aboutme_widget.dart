import 'package:flutter/material.dart';

import 'package:rodolpho_pinheiro/constants/constants.dart';

class AboutMeWidget extends StatelessWidget {
  double left;
  double right;
  double height;

  AboutMeWidget({
    Key? key,
    required this.left,
    required this.right,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.percentHeight(height),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://cdn.pixabay.com/photo/2022/04/03/15/33/world-wide-web-7109276_960_720.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: Colors.black54,
        padding: EdgeInsets.only(
          left: context.percentWidth(left),
          right: context.percentWidth(right),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 30,
              ),
              Text(
                'Sobre mim',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Em 2021, seguindo a orientação de alguns  amigos comecei a '
                  'estudar e decidi mudar para a área de tecnologia '
                  ' Desde outubro de 2022, atuo como Desenvolvedor Front-End Web/Mobile'
                  ' Flutter, colaborando com o time para desenvolver novas funcionalidades'
                  ' para aplicativos e sites, sempre buscando aprimorar meus conhecimentos.'
                  'Em equipe, sou proativo, comprometido, humilde e sempre busco aprender'
                  ' e ajudar. ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
