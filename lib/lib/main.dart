import 'package:material_ui/material_ui.dart';

import 'app/assistant_app.dart';
import 'app/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(const AssistantApp());
}
