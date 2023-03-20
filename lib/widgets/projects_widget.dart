import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:rodolpho_pinheiro/utils/app_routes.dart';
import 'package:rodolpho_pinheiro/widgets/widget_project.dart';
import 'package:rodolpho_pinheiro/widgets/widget_project_list.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      width: context.screenWidth,
      color: Colors.black87,
      child: const SingleChildScrollView(
        child: WidgetProjectList(),
      ),
    );
  }
}
