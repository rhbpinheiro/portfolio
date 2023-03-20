import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';

import '../model/project_model.dart';
import 'widget_project.dart';
import 'widget_project_list.dart';

class ProjectDetailWidget extends StatelessWidget {
  const ProjectDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectModel project = ModalRoute.of(context)!.settings.arguments as ProjectModel;
    return Scaffold(
      body: Container(
        width: context.screenWidth,
        color: Colors.black87,
        child: Column(
          children: [
            Text(
              project.title!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
              ),
            ),
    
          ],
        ),
      ),
    );
  }
}
