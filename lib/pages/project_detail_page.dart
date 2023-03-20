import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../model/project_model.dart';
import '../utils/app_routes.dart';
import '../widgets/widget_footer.dart';
import '../widgets/mobile_appbar.dart';
import '../widgets/web_appbar.dart';
import '../widgets/widget_project_detail.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectModel project =
        ModalRoute.of(context)!.settings.arguments as ProjectModel;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 85),
                  child: WebAppBar(),
                ),
          body: ProjectDetail(project: project),
        );
      },
    );
  }
}

