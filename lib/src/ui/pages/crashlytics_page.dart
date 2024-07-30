import 'package:auto_route/auto_route.dart';
import 'package:coree/src/crash_testing/crash.dart';
import 'package:coree/src/lang/l10n_context_extension.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CrashlyticsPage extends StatelessWidget {
  const CrashlyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = context.l10n;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(lang.crashlyticsPage),
          TextButton(onPressed: crashlyticsTestFunction, child: Text(lang.crashlyticsTestCrash)),
        ],
      ),
    );
  }
}
