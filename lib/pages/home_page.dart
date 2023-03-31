import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/menu_drawer.dart';
import '../widgets/widget_footer.dart';
import '../widgets/presentation_widget.dart';
import '../widgets/mobile_appbar.dart';
import '../widgets/web_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
          endDrawer: constraints.maxWidth < mobileBreakpoint
              ? const MenuDrawer()
              : null,
          body: SingleChildScrollView(
            child: Column(
              children: const [
                PresentationWidget(),
                WidgetFooter(),
              ],
            ),
          ),
        );
      },
    );
  }
}
