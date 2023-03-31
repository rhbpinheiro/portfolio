import 'package:flutter/material.dart';

const mobileBreakpoint = 800;

const tabletBreakpoint = 1200;

extension SizeExtensions on BuildContext {
  //exemple  width: context.percentWidth(.6),
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentWidth(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}

const Color backgroundHomePage = Color(0xFF141316);

const Color colorGreyBorder = Color(0xFF989C9A);

final Uri portfolioUri = Uri(
  scheme: 'https',
  host: 'github.com',
  path: '/rhbpinheiro/portfolio',
);
final Uri personalExpensesUri = Uri(
  scheme: 'https',
  host: 'github.com',
  path: '/rhbpinheiro/-personal_expenses',
);
final Uri calcImcUri = Uri(
  scheme: 'https',
  host: 'github.com',
  path: '/rhbpinheiro/react-calc-imc',
);
final Uri devstravelUri = Uri(
  scheme: 'https',
  host: 'github.com',
  path: '/rhbpinheiro/devstravel',
);
final Uri vamosCozinharUri = Uri(
  scheme: 'https',
  host: 'github.com',
  path: '/rhbpinheiro/vamos_cozinhar',
);
final Uri clonenetflixUri = Uri(
  scheme: 'https',
  host: 'github.com',
  path: '/rhbpinheiro/clonenetflix',
);
final Uri tictactoeUri = Uri(
  scheme: 'https',
  host: 'github.com',
  path: '/rhbpinheiro/tic-tac-toe-dc',
);
final Uri gitHubUri = Uri(
  scheme: 'https',
  host: 'github.com',
  path: '/rhbpinheiro',
);
final Uri linkedinUri = Uri(
  scheme: 'https',
  host: 'www.linkedin.com',
  path: '/in/rodolphopinheiro/',
);
final Uri instagramUri = Uri(
  scheme: 'https',
  host: 'www.instagram.com',
  path: '/rodolpho_pinheiro/',
);
final Uri whatsappUri = Uri(
  scheme: 'https',
  host: 'api.whatsapp.com',
  path: '/send',
  queryParameters: {'phone': '556196200181'},
);

final ButtonStyle hoverButton = ButtonStyle(
  textStyle:
      MaterialStateProperty.resolveWith<TextStyle>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return const TextStyle(decoration: TextDecoration.underline);
    }
    return const TextStyle(decoration: TextDecoration.none);
  }),
  foregroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return const Color(0XFF989C9A);
    }
    return const Color(0XFFFFFFFF);
  }),
);
final ButtonStyle hoverElevatedButton = ButtonStyle(
  backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return const Color.fromARGB(255, 79, 82, 80);
    }
    return const Color(0XFF0b1639);
  }),
);
