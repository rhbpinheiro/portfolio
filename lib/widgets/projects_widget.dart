import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:rodolpho_pinheiro/widgets/widget_project_list.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({Key? key}) : super(key: key);

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
      child: Container(
        padding: const EdgeInsets.only(top: 30, bottom: 30),
        width: context.screenWidth,
        color: Colors.black87,
        child: const SingleChildScrollView(
          child: WidgetProjectList(),
        ),
      ),
    );
  }
}
