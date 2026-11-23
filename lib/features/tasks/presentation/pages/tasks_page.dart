import 'package:material_ui/material_ui.dart';

import '../../../../core/widgets/placeholder_page.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlaceholderPage(
      title: 'Tasks',
      icon: Icons.check_circle_outline,
      phaseLabel: 'Coming in Phase 3',
    );
  }
}
