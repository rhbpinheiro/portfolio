import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:rodolpho_pinheiro/model/project_list_model.dart';
import 'package:rodolpho_pinheiro/model/project_model.dart';
import 'package:rodolpho_pinheiro/widgets/widget_project.dart';

class WidgetProjectList extends StatelessWidget {
  const WidgetProjectList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProjectListModel>(context);
    final List<ProjectModel> loadProject = provider.projects;

    return SizedBox(
      width: context.screenWidth,
      child: Padding(
        padding: EdgeInsets.only(
          top: 20,
          left: context.percentWidth(.20),
          right: context.percentWidth(.20),
        ),
        child: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: loadProject.length,
              itemBuilder: (context, index) {
                return ChangeNotifierProvider.value(
                  value: loadProject[index],
                  child: const WidgetProject(
                    width: 450,
                    height: 250,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
