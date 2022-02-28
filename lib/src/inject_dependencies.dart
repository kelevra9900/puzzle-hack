import 'package:audio_session/audio_session.dart';
import 'package:get_it/get_it.dart';
import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/repositories_impl/audio_repository_impl.dart';
import 'data/repositories_impl/images_repository_impl.dart';
import 'data/repositories_impl/settings_repository_impl.dart';
import 'domain/repositories/audio_repository.dart';
import 'domain/repositories/images_repository.dart';
import 'domain/repositories/settings_repository.dart';

Future<void> injectDependencies() async {
  final preferences = await SharedPreferences.getInstance();
  final session = await AudioSession.instance;
  await session.configure(
    const AudioSessionConfiguration.music(),
  );

  GetIt.I.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(preferences),
  );

  GetIt.I.registerLazySingleton<ImagesRepository>(
    () => ImagesRepositoryImpl(),
  );

  GetIt.I.registerLazySingleton<AudioRepository>(
    () => AudioRepositoryImpl(
      AudioPlayer(),
    ),
    dispose: (repository) {
      repository.dispose();
    },
  );
}
