import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../utils/app_routes.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundHomePage,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2022/04/03/15/33/world-wide-web-7109276_960_720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    border: Border.all(width: 3, color: colorGreyBorder),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(35),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/perfil.png',
                    width: 70,
                    height: 70,
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  child: Text(
                    'Rodolpho Pinheiro',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
            },
            child: const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Início',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.ABOUTME);
            },
            child: const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Sobre mim',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.PROJECTS);
            },
            child: const ListTile(
              leading: Icon(
                Icons.work,
                color: Colors.white,
              ),
              title: Text(
                'Projetos',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const ListTile(
              leading: Icon(
                Icons.contact_phone,
                color: Colors.white,
              ),
              title: Text(
                'Contato',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
