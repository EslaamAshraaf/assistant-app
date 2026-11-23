import 'package:get_it/get_it.dart';

/// App-wide service locator.
final GetIt sl = GetIt.instance;

/// Registers dependencies in one place.
///
/// Phase 1 wires nothing yet. Feature repositories, data sources and cubits
/// register here from Phase 2 onward, so swapping mocks for a remote data
/// source later touches this file only.
Future<void> setupDependencies() async {}
