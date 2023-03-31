import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/aboutme_widget.dart';
import '../widgets/menu_drawer.dart';
import '../widgets/widget_footer.dart';
import '../widgets/mobile_appbar.dart';
import '../widgets/web_appbar.dart';

class AbouteMePage extends StatelessWidget {
  const AbouteMePage({Key? key}) : super(key: key);

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
              children: [
                AboutMeWidget(
                  left: constraints.maxWidth < mobileBreakpoint ? .1 : .2,
                  right: constraints.maxWidth < mobileBreakpoint ? .1 : .2,
                  height: constraints.maxWidth < mobileBreakpoint ? .8 : .6,
                ),
                WidgetFooter(),
              ],
            ),
          ),
        );
      },
    );
  }
}
