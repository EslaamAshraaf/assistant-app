import 'package:go_router/go_router.dart';

import '../features/chat/presentation/pages/chat_page.dart';
import '../features/files/presentation/pages/files_page.dart';
import '../features/settings/presentation/pages/settings_page.dart';
import '../features/tasks/presentation/pages/tasks_page.dart';
import 'app_shell.dart';

abstract final class AppRoutes {
  static const String chat = '/chat';
  static const String tasks = '/tasks';
  static const String files = '/files';
  static const String settings = '/settings';
}

/// Bottom-navigation shell with three stateful branches; Settings is pushed
/// on top of the shell so the tab bar stays hidden there.
GoRouter buildRouter() {
  return GoRouter(
    initialLocation: AppRoutes.chat,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            AppShell(navigationShell: navigationShell),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(routes: <RouteBase>[
            GoRoute(path: AppRoutes.chat, builder: (context, state) => const ChatPage()),
          ]),
          StatefulShellBranch(routes: <RouteBase>[
            GoRoute(path: AppRoutes.tasks, builder: (context, state) => const TasksPage()),
          ]),
          StatefulShellBranch(routes: <RouteBase>[
            GoRoute(path: AppRoutes.files, builder: (context, state) => const FilesPage()),
          ]),
        ],
      ),
      GoRoute(
        path: AppRoutes.settings,
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );
}
