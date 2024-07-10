import 'package:auto_route/auto_route.dart';
import 'package:coree/src/lang/lang.dart';
import 'package:coree/src/_routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

@RoutePage()
class RouterPage extends StatelessWidget {
  const RouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      // These should Always be constant.
      routes: const [
        DemoPage(),
        CrashlyticsPage(),
        RoutingTestPage(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(label: Alocale.counting.getString(context), icon: const Icon(Icons.numbers)),
            BottomNavigationBarItem(label: Alocale.crashlytics.getString(context), icon: const Icon(Icons.bug_report)),
            BottomNavigationBarItem(label: Alocale.settings.getString(context), icon: const Icon(Icons.settings)),
          ],
        );
      },
    );
  }
}
