import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/aboutme_widget.dart';
import '../widgets/projects_widget.dart';
import '../widgets/widget_footer.dart';
import '../widgets/presentation_widget.dart';
import '../widgets/mobile_appbar.dart';
import '../widgets/web_appbar.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          body: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ProjectsWidget(),
                  WidgetFooter(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
