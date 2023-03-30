import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class PresentationWidget extends StatelessWidget {
  const PresentationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw "Can not launch url";
      }
    }

    return Container(
      width: context.screenWidth,
      height: context.percentHeight(.8),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://cdn.pixabay.com/photo/2022/04/03/15/33/world-wide-web-7109276_960_720.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: context.screenWidth,
        color: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
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
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Desenvolvedor Front-End Flutter Web e Mobile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () async {
                          _launchInBrowser(gitHubUri);
                        },
                        icon: const Icon(
                          FontAwesome.github,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _launchInBrowser(linkedinUri);
                        },
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
                  const SizedBox(height: 10),
                  const Text(
                    'Minhas Stacks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      Column(
                        children: const [
                          ImageIcon(
                            AssetImage('../../assets/images/flutter.png'),
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Flutter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          ImageIcon(
                            AssetImage('../../assets/images/dart.png'),
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Dart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            FontAwesome.html5,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'HTML5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            FontAwesome.css3,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'CSS3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            FontAwesome.js,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'JavaScript',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(FontAwesome.react,
                              color: Colors.white, size: 30),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'React',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            FontAwesome.github,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'GitHub',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Bootstrap.git,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Git',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            BoxIcons.bxl_typescript,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'TypeScript',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
