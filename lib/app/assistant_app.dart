import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../core/theme/app_theme.dart';
import 'router.dart';

/// Root widget. Kept stateful so the [GoRouter] is created once.
class AssistantApp extends StatefulWidget {
  const AssistantApp({super.key});

  @override
  State<AssistantApp> createState() => _AssistantAppState();
}

class _AssistantAppState extends State<AssistantApp> {
  late final GoRouter _router = buildRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Assistant',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      routerConfig: _router,
    );
  }
}
