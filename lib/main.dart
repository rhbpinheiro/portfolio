import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:provider/provider.dart';
import 'package:rodolpho_pinheiro/model/project_list_model.dart';
import 'package:rodolpho_pinheiro/pages/abouteme_page.dart';
import 'package:rodolpho_pinheiro/pages/project_detail_page.dart';
import 'package:rodolpho_pinheiro/pages/project_page.dart';
import 'package:rodolpho_pinheiro/widgets/aboutme_widget.dart';
import 'package:rodolpho_pinheiro/pages/home_page.dart';
import 'package:rodolpho_pinheiro/widgets/projects_widget.dart';
import 'package:rodolpho_pinheiro/utils/app_routes.dart';

import 'model/project_model.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProjectListModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProjectModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Rodolpho Pinheiro',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.HOME,
        routes: {
          AppRoutes.HOME: (context) => HomePage(),
          AppRoutes.ABOUTME: (context) => AbouteMePage(),
          AppRoutes.PROJECTS: (context) => ProjectPage(),
          AppRoutes.PROJECT_DETAIL: (context) => ProjectDetailPage(),
          // AppRoutes.CONTACT: (context) => ProjectDetailPage(),
        },
      ),
    );
  }
}
