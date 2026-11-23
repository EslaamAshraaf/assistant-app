import 'package:material_ui/material_ui.dart';

import '../../../../core/widgets/placeholder_page.dart';

class FilesPage extends StatelessWidget {
  const FilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlaceholderPage(
      title: 'Files',
      icon: Icons.folder_outlined,
      phaseLabel: 'Coming in Phase 4',
    );
  }
}
