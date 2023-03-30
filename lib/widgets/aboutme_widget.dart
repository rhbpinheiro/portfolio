import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://cdn.pixabay.com/photo/2022/04/03/15/33/world-wide-web-7109276_960_720.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      width: context.screenWidth,
      height: context.percentHeight(.6),
      child: Container(
        color: Colors.black54,
        padding: EdgeInsets.only(
          left: context.percentWidth(.3),
          right: context.percentWidth(.3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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
                'Em 2021, decidi mudar para a área de tecnologia.'
                ' Desde outubro de 2022, atuo como Desenvolvedor Front-End Web/Mobile'
                ' Flutter, colaborando com o time para desenvolver novas funcionalidades'
                ' para aplicativos e sites, sempre buscando aprimorar meus conhecimentos.'
                'Em equipe, sou proativo, comprometido, humilde e sempre busco aprender'
                ' e ajudar. Estou cursando Formação Full-Stack e Análise'
                ' e Desenvolvimento de Sistemas.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
