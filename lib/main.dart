import 'package:Postly/core/di/configure_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'core/platform/app_theme.dart';
import 'core/platform/connection_status.dart';
import 'core/platform/cubit_providers.dart';
import 'features/posts/presentation/pages/posts_home.dart';

Future<void> main() async {
  configureDependencies();

  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  ConnectionStatusSingleton.getInstance().initialize();

  runApp(Postly());
}

class Postly extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: providers,
        child: MaterialApp(
          title: 'Postly',
          debugShowCheckedModeBanner: false,
          theme: appThemeLight,
          home: const PostsHome(),
        ),
      );
}
